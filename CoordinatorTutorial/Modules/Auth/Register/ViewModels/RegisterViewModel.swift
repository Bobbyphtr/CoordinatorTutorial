//
//  RegisterViewModel.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 13/04/21.
//

import Foundation

class RegisterViewModel {
    
    weak var appCoordinator : AuthCoordinator!
    
    func goToLogin(){
        appCoordinator.goToLoginPage()
    }
    
}
