//
//  LoginViewModel.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 13/04/21.
//

import Foundation

class LoginViewModel {
    
    weak var appCoordinator : AuthCoordinator!
    
    func goToRegister(){
        appCoordinator.goToRegisterPage()
    }
}
