//
//  ContactListViewController.swift
//  FinanceApp
//
//  Created by Rodrigo Borges on 30/12/21.
//

import UIKit

class ContactListViewController: UIViewController {

    var interactor: ContactListInteractorProtocol

    init(interactor: ContactListInteractorProtocol) {
        self.interactor = interactor
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        nil
    }
    
    override func loadView() {
        self.view = ContactListView()
    }
    
    override func viewDidLoad() {
        interactor.fetchContacts()
    }
}

extension ContactListViewController: ContactListViewProtocol {
    
    func update(contacts: [ContactViewModel]) {
        guard let view = self.view as? ContactListView else {
            return
        }
        view.update(contacts: contacts)
    }
}
