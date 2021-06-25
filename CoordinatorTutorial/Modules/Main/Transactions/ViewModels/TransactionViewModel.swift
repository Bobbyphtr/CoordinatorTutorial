//
//  TransactionViewModel.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 24/06/21.
//

import Foundation

protocol TransactionNavigation : AnyObject {
    func goToPayment()
    func goToProductList()
    func goBackToHome()
}

class TransactionViewModel {
    
    weak var navigation : TransactionNavigation!
    
    init(nav : TransactionNavigation) {
        self.navigation = nav
    }
    
    func goToPayment(){
        navigation.goToPayment()
    }
    
    func goToProductList(){
        navigation.goToProductList()
    }
    
    func goHome(){
        navigation.goBackToHome()
    }
}
