//
//  TransactionCoordinator.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 25/06/21.
//

import Foundation
import UIKit

class TransactionCoordinator : Coordinator {
    
    var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    let storyboard = UIStoryboard.init(name: "Main", bundle: .main)
    
    lazy var transactionViewModel = TransactionViewModel(nav: self)
    
    func start() {
        print("TransactionCoordinator Start")
        goToProductList()
    }
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    deinit {
        print("TransactionCoordinator deinit")
    }
}

extension TransactionCoordinator : TransactionNavigation {
    
    func goToPayment() {
        let vc = storyboard.instantiateViewController(withIdentifier: "PaymentViewController") as! PaymentViewController
        vc.viewModel = transactionViewModel
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goToProductList() {
        let vc = storyboard.instantiateViewController(withIdentifier: "ProductListViewController") as! ProductListViewController
        vc.viewModel = transactionViewModel
        navigationController.pushViewController(vc, animated: true)
    }
    
    func goBackToHome() {
        navigationController.popToRootViewController(animated: true)
        parentCoordinator?.childDidFinish(self)
    }
    
    
}
