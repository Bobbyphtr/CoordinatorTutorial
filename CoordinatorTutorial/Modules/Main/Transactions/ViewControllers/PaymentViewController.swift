//
//  PaymentViewController.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 24/06/21.
//

import UIKit

class PaymentViewController: UIViewController {
    
    weak var viewModel : TransactionViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backToHomeTapped(_ sender: Any) {
        viewModel.goHome()
    }

}
