//
//  ProductListViewController.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 24/06/21.
//

import UIKit

class ProductListViewController: UIViewController {

    weak var viewModel : TransactionViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func chooseProductTapped(_ sender: Any) {
        viewModel.goToPayment()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
