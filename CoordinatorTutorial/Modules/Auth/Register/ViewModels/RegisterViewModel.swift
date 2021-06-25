//
//  RegisterViewModel.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 13/04/21.
//

import Foundation

protocol RegisterNavigation : AnyObject{
    func goToLoginPage()
}

class RegisterViewModel {
    
    weak var navigation : RegisterNavigation!
    
    init(nav : RegisterNavigation) {
        self.navigation = nav
    }
    
    func goToLogin(){
        navigation.goToLoginPage()
    }
    
}
