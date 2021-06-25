//
//  HomeCoordinator.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 24/04/21.
//

import Foundation
import UIKit

class HomeCoordinator : Coordinator {
    
    weak var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    let storyboard = UIStoryboard.init(name: "Main", bundle: .main)
    
    func start() {
        print("HomeCoordinator Start")
        
        let homeVC = storyboard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        homeVC.viewModel = HomeViewModel(nav: self)
        navigationController.pushViewController(homeVC, animated: true)
    }
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    deinit {
        print("Deinit home coordinator")
    }
    
}

extension HomeCoordinator : HomeNavigation {
    
    func logout() {
        let appC = parentCoordinator as! AppCoordinator
        appC.goToAuth()
        appC.childDidFinish(self)
    }
    
    func goToBuyProduct() {
        // If you want to merge the transaction flow with the home
        
//        let vc = storyboard.instantiateViewController(withIdentifier: "ProductListViewController")
//        navigationController.pushViewController(vc, animated: true)
        
        // Use this code if you want to separate the transaction as a subflow.
        let transactionCoordinator = TransactionCoordinator(navigationController: navigationController)
        // Add the parent with self
        transactionCoordinator.parentCoordinator = self
        children.append(transactionCoordinator)
        
        transactionCoordinator.start()
        
        
    }
    
}
