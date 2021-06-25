//
//  HomeViewController.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 24/04/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    var viewModel : HomeViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title  = "Home"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func buySomeProductTapped(_ sender: Any) {
        viewModel.buyProducts()
    }
    
    @IBAction func logoutButtontapped(_ sender: Any) {
        viewModel.logOut()
    }
    
}
