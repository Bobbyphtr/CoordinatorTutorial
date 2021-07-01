//
//  BaseViewController.swift
//
//  Created by BobbyPhtr on 02/03/21.
//

import UIKit

/// You could add more general code and functions. Such as, show dialog, or setup a default Navigation Controller.
class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // setupDefaultNavigationController()
    }
    
}
