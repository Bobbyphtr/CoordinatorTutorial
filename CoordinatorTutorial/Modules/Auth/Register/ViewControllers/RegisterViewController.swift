//
//  RegisterViewControllersViewController.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 13/04/21.
//

import UIKit

class RegisterViewController: UIViewController {

    var viewModel : RegisterViewModel!
    
    @IBOutlet weak var backToLoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func backToLoginTapped(_ sender: Any) {
        viewModel.goToLogin()
    }
    
}
