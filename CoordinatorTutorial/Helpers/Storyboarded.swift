//
//  Storyboarded.swift
//  CoordinatorTutorial
//
//  Created by BobbyPhtr on 01/07/21.
//
//  https://www.hackingwithswift.com/articles/71/how-to-use-the-coordinator-pattern-in-ios-apps

import UIKit

/// If you implement Storyboard, this protocol will sure helps you to make instantiation easier. Make sure to use this protocol on every storyboarded UIViewController.
///
///  Example :
///  ```
///  let vc = LoginViewController.instantiate(from : storyboard)
///  ```
///
/// - WARNING: You have to set the storyboard ID with the name of the UIViewController class! Works with UITableViewController, and all other UIViewController subclasses.
protocol Storyboarded {
    static func instantiate(from storyboard : UIStoryboard) -> Self
}

extension Storyboarded where Self: UIViewController {
    
    /// Instantiates the implemented UIViewController from storyboard.
    /// - Parameter storyboard: `Storyboard` where the UIViewController exist.
    /// - Returns: UIViewController
    static func instantiate(from storyboard : UIStoryboard) -> Self {
        /// Take the full name of the class : "App.MyViewController"
        let fullName = NSStringFromClass(self)
        /// Separate the class name from its full name. "MyViewController"
        let className = fullName.components(separatedBy: ".")[1]
        /// Instantiate the UIViewController based on the class name.
        return storyboard.instantiateViewController(withIdentifier: className) as! Self
        
    }
}
