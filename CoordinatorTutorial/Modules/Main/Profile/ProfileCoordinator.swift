//
//  ProfileCoordinator.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 24/04/21.
//

import Foundation
import UIKit

class ProfileCoordinator : Coordinator {
    
    weak var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    let storyboard = UIStoryboard.init(name: "Main", bundle: .main)
    
    func start() {
        print("ProfileCoordinator Start")
        
        let profileVC = storyboard.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        navigationController.pushViewController(profileVC, animated: false)
    }
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    deinit {
        print("Deinit Profile Coordinator")
    }
    
}
