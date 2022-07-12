//
//  TransfersViewController.swift
//  FinanceApp
//
//  Created by Rodrigo Borges on 30/12/21.
//

import UIKit

class TransfersViewController: UIViewController {
    var presenter: TransfersPresenterProtocol?
    
    lazy var transferView: TransfersView = {
        let transferView = TransfersView()
        transferView.delegate = self
        return transferView
    }()
    
    override func loadView() {
        self.view = transferView
    }
    
    override func viewDidLoad() {
        presenter?.viewDidLoad()
    }
}

extension TransfersViewController: TransferViewDelegate {
    func didPressChooseContactButton() {
        presenter?.goToContactList()
    }
    
    func didPressTransferButton() {
        presenter?.doTransfer()
    }
}

extension TransfersViewController: TransfersPresenterDelegate {
    func showError() {
        print("Deu ruim.")
    }
//
//    func showDataOnView() {
//        print("Deu bom")
//        guard let navigationController = self.navigationController else { return }
//        presenter?.goToConfirmation(navigation: navigationController)
//    }
}
