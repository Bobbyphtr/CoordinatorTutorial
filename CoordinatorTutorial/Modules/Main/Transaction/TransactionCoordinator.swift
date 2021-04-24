//
//  TransactionCoordinator.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 24/04/21.
//

import Foundation
import UIKit

class TransactionCoordinator : Coordinator {
    
    weak var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    func start() {
        //
    }
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
}
