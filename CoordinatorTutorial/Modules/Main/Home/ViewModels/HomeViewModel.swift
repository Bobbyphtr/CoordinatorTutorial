//
//  HomeViewModel.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 13/04/21.
//

import Foundation

protocol HomeNavigation : AnyObject {
    func goToBuyProduct()
    func logout()
}

class HomeViewModel{
    
    weak var navigation : HomeNavigation!
    
    init(nav : HomeNavigation) {
        self.navigation = nav
    }
    
    func buyProducts(){
        navigation.goToBuyProduct()
    }
    
    func logOut(){
        navigation.logout()
    }

}
