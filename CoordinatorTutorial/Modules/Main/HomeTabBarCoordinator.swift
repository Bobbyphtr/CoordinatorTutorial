//
//  HomeTabBarCoordinator.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 24/04/21.
//

import Foundation
import UIKit

class HomeTabBarCoordinator : Coordinator {
    
    weak var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    func start() {
        //
    }
    
    let storyboard = UIStoryboard.init(name: "Main", bundle: .main)
    
    func initializeHomeTabBar(){
        let vc = UITabBarController.init()
        
        // Instantiate all related coordinators and views also dependecies like VM or API Services.
        // We want each section has their own navigation controller, rather than app wide view controller.
        let homeCoordinator = HomeCoordinator.init(navigationController: UINavigationController())
        // we want to home coordinator connected to the App Coordinator, because the HomeTabbar coordinator only serves as a container.
        homeCoordinator.parentCoordinator = parentCoordinator
        
    }
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
}
