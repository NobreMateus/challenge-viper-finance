//
//  ContactListConfigurator.swift
//  FinanceApp
//
//  Created by mobills on 15/11/22.
//

import Foundation

final class ContactListConfigurator {
    
    static func make() -> ContactListViewController {
        let api = FinanceService()
        let presenter = ContactListPresenterDecorator(ContactListPresenter())
        let interactor = ContactListInteractor(api: api, presenter: presenter)
        let viewController = ContactListViewController(interactor: interactor)
        presenter.view = viewController
        return viewController
    }
}

final class ContactListPresenterDecorator: ContactListPresenterProtocol {
    
    var actualContactListPresenter: ContactListPresenterProtocol
    weak var view: ContactListViewProtocol? {
        didSet {
            self.actualContactListPresenter.view = view
        }
    }
    
    init(_ actualContactListPresenter: ContactListPresenterProtocol) {
        self.actualContactListPresenter = actualContactListPresenter
    }
    
    func receiveContacts(contacts: [ContactResponse]) {
        DispatchQueue.main.async { [weak self] in
            self?.actualContactListPresenter.receiveContacts(contacts: contacts)
        }
    }
}
