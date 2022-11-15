import Foundation

final class ContactListInteractor {
    
    var api: FinanceService
    var presenter: ContactListPresenterProtocol
    
    init(api: FinanceService, presenter: ContactListPresenterProtocol) {
        self.api = api
        self.presenter = presenter
    }
}

extension ContactListInteractor: ContactListInteractorProtocol {
    
    func fetchContacts() {
        api.fetchContactList() { [weak self] contacts in
            guard let contacts = contacts,
                  let self = self
            else { return }
            self.presenter.receiveContacts(contacts: self.contactsMap(contacts: contacts))
        }
    }
    
    private func contactsMap(contacts: [Contact]) -> [ContactResponse] {
        return contacts.map {
            ContactResponse(name: $0.name, birth: Date(), phone: $0.phone, username: "")
        }
    }
}
