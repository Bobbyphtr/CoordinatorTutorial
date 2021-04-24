//
//  Coordinator.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 13/04/21.
//

import Foundation
import UIKit

protocol Coordinator {
    var parentCoordinator: Coordinator? { get set }
    var children: [Coordinator] { get set }
    var navigationController : UINavigationController { get set }
    
    func start()
}
