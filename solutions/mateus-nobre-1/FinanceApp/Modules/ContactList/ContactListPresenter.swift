final class ContactListPresenter {
    
    weak var view: ContactListViewProtocol?
}

extension ContactListPresenter: ContactListPresenterProtocol {
    func receiveContacts(contacts: [ContactResponse]) {
        let contacts = contactsMap(contacts: contacts)
        view?.update(contacts: contacts)
    }
    
    private func contactsMap(contacts: [ContactResponse]) -> [ContactViewModel] {
        contacts.map {
            ContactViewModel(name: $0.name, phone: $0.phone)
        }
    }
}
