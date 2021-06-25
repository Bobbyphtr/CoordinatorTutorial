//
//  HistoryCoordinator.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 24/04/21.
//

import Foundation
import UIKit

class HistoryCoordinator : Coordinator {
    
    weak var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    let storyboard = UIStoryboard.init(name: "Main", bundle: .main)
    
    func start() {
        print("HistoryCoordinator Start")
        
        let vc = storyboard.instantiateViewController(withIdentifier: "HistoryViewController") as! HistoryViewController
        navigationController.pushViewController(vc, animated: false)
    }
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    deinit {
        print("Deinit History Coordinator")
    }
}
