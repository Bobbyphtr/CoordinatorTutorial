//
//  LoginViewController.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 13/04/21.
//

import Foundation
import UIKit

class LoginViewController : UIViewController {
    
    var viewModel : LoginViewModel!
    
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func registerButtonTapped(_ sender: Any) {
        viewModel.goToRegister()
    }
}
