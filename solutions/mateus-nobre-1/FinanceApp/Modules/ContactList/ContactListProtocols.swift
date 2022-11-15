import Foundation

protocol ContactListInteractorProtocol {
    
    func fetchContacts()
}

protocol ContactListViewProtocol: AnyObject {
    
    func update(contacts: [ContactViewModel])
}

protocol ContactListPresenterProtocol {
    var view: ContactListViewProtocol? { get set } 
    func receiveContacts(contacts: [ContactResponse])
}

struct ContactResponse {
    var name: String
    var birth: Date
    var phone: String
    var username: String
}

struct ContactViewModel {
    var name: String
    var phone: String
}
