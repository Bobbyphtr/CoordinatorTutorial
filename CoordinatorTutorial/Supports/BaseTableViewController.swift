//
//  BaseTableViewController.swift
//
//  Created by BobbyPhtr on 17/03/21.
//

import Foundation
import UIKit

/// You could add more general code and functions. Such as, show dialog, or setup a default Navigation Controller.
class BaseTableViewController : UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // setupDefaultNavigationController()
    }
    
}
