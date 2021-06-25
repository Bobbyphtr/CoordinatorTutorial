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
        initializeHomeTabBar()
    }
    
    let storyboard = UIStoryboard.init(name: "Main", bundle: .main)
    
    func initializeHomeTabBar(){
        let vc = UITabBarController.init()
        
        // Instantiate all related coordinators and views also dependecies like VM or API Services.
        // We want each section has their own navigation controller, rather than app wide view controller.
        let homeNavigationController = UINavigationController()
        let homeCoordinator = HomeCoordinator.init(navigationController: homeNavigationController)
        // we want to home coordinator connected to the App Coordinator, because the HomeTabbar coordinator only serves as a container.
        homeCoordinator.parentCoordinator = parentCoordinator
        
        // Create the tabbar item for tabbar.
        let homeItem = UITabBarItem()
        homeItem.title = "HOME"
        homeItem.image = UIImage.init(systemName: "house.fill")
        homeNavigationController.tabBarItem = homeItem
        
        // Setup for profile tab
        let profileNavigationController = UINavigationController()
        let profileCoordinator = ProfileCoordinator.init(navigationController: profileNavigationController)
        profileCoordinator.parentCoordinator = parentCoordinator
        
        let profileItem = UITabBarItem()
        profileItem.title = "PROFILE"
        profileItem.image = UIImage.init(systemName: "person.fill")
        profileNavigationController.tabBarItem = profileItem
        
        // Setup for history tab
        let historyNavigationController = UINavigationController()
        let historyCoordinator = HistoryCoordinator.init(navigationController: historyNavigationController)
        historyCoordinator.parentCoordinator = parentCoordinator
        
        let historyItem = UITabBarItem()
        historyItem.title = "HISTORY"
        historyItem.image = UIImage.init(systemName: "clock.fill")
        historyNavigationController.tabBarItem = historyItem
        
        vc.viewControllers = [homeNavigationController, historyNavigationController, profileNavigationController]
        navigationController.pushViewController(vc, animated: true)
        navigationController.setNavigationBarHidden(true, animated: true)
        
        // Add the coordinator into parent's child
        parentCoordinator?.children.append(homeCoordinator)
        parentCoordinator?.children.append(profileCoordinator)
        parentCoordinator?.children.append(historyCoordinator)
        
        homeCoordinator.start()
        profileCoordinator.start()
        historyCoordinator.start()
    }
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
}
