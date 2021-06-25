//
//  LoginViewModel.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 13/04/21.
//

import Foundation

protocol LoginNavigation : AnyObject{
    func goToRegisterPage()
    func goToHome()
}

class LoginViewModel {
    
    weak var navigation : LoginNavigation!
    
    init(nav : LoginNavigation) {
        self.navigation = nav
    }
    
    func goToRegister(){
        navigation.goToRegisterPage()
    }
    
    func goToHome(){
        navigation.goToHome()
    }
    
    deinit {
        print("Deinit login")
    }
}
