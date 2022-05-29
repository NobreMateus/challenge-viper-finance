//
//  HomeInteractor.swift
//  FinanceApp
//
//  Created by Julio Fernandes on 25/05/22.
//  Copyright © 2022 tuist.io. All rights reserved.
//

import Foundation

final class HomeInteractor: HomeInteractorProtocol {

    weak var presenter: HomeInteractorDelegate?

    func fetchTotal() {
        print("did fetch total")
    }
    
    func fetchSavings() {
        print("did fetch savings")
    }
    
    func fetchSpendings() {
        print("did fetch spendings")
    }
    
    func fetchActivities() {
        print("did fetch activities")
    }
}
