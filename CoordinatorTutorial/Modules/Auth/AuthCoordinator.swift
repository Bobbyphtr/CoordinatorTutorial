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
    
    
    deinit {
        print("AuthCoordinator Deinit")
    }
}

extension AuthCoordinator : LoginNavigation, RegisterNavigation {
    
    func goToHome() {
        // Get the app coordinator
        let appC = parentCoordinator as! AppCoordinator
        // And go to home!
        appC.goToHome()
        // Remember to clean up
        parentCoordinator?.childDidFinish(self)
    }
    
    func goToLoginPage(){
        // Instantiate LoginViewController
        let loginViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        
        // Instantiate LoginViewModel and set the coordinator
        let loginViewModel = LoginViewModel.init(nav: self)
        
        // Set the ViewModel to ViewController
        loginViewController.viewModel = loginViewModel
        
        // Push it.
        navigationController.pushViewController(loginViewController, animated: true)
    }
    
    func goToRegisterPage(){
        let registerViewController = storyboard.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        let registerViewModel = RegisterViewModel.init(nav: self)
        
        registerViewController.viewModel = registerViewModel
        
        navigationController.pushViewController(registerViewController, animated: true)
    }
}
