//
//  AuthCoordinator.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 13/04/21.
//

import Foundation
import UIKit

class AuthCoordinator : Coordinator {
    
    weak var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    
    func start() {
        print("AuthCoordinator Start")
        goToLoginPage()
    }
    
    let storyboard = UIStoryboard.init(name: "Main", bundle: .main)
    
    func goToLoginPage(){
        // Instantiate LoginViewController
        let loginViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        
        // Instantiate LoginViewModel
        let loginViewModel = LoginViewModel.init()
        
        // Set the Coordinator to the ViewModel
        loginViewModel.appCoordinator = self
        
        // Set the ViewModel to ViewController
        loginViewController.viewModel = loginViewModel
        
        // Push it.
        navigationController.pushViewController(loginViewController, animated: true)
    }
    
    func goToRegisterPage(){
        let registerViewController = storyboard.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        let registerViewModel = RegisterViewModel.init()
        registerViewModel.appCoordinator = self
        
        registerViewController.viewModel = registerViewModel
        
        navigationController.pushViewController(registerViewController, animated: true)
    }
    
    deinit {
        print("AuthCoordinator Deinit")
    }
}
