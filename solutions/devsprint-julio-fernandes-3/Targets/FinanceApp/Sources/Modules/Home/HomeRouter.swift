//
//  HomeRouter.swift
//  FinanceApp
//
//  Created by Julio Fernandes on 25/05/22.
//  Copyright © 2022 tuist.io. All rights reserved.
//

import UIKit

final class HomeRouter: HomeRouterProtocol {

    var view: UIViewController?
    
    func navigateToProfileModule() {
        let viewController = UserProfileConfigurator.createModule()
        let navigationController = UINavigationController(rootViewController: viewController)
        view?.present(navigationController, animated: true)
    }
}
