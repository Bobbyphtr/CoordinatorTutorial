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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: true)
    }

    @IBAction func registerButtonTapped(_ sender: Any) {
        viewModel.goToRegister()
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        viewModel.goToHome()
    }
    
}
