//
//  TabBarViewController.swift
//  Microchet
//
//  Created by Nathaniel Andrian on 05/12/21.
//

import UIKit

class TabBarViewController: UITabBarController {

    // -MARK: App Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupVC()
        tabBarController?.tabBar.barTintColor = UIColor(named: "dark_terra_cotta")
        tabBarController?.tabBar.tintColor = UIColor(named: "dark_terra_cotta")
    }

    
    // MARK: -Create Navigation Controller for Main Page with Tab Bar
    fileprivate func createNavigationController(for rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        
        let navigationController = UINavigationController(rootViewController: rootViewController)
        navigationController.tabBarItem.title = title
        navigationController.tabBarItem.image = image
        navigationItem.largeTitleDisplayMode = .automatic
        navigationController.navigationBar.prefersLargeTitles = true
        rootViewController.navigationItem.title = title
        
        return navigationController
    }
    
    //MARK: -Setup ViewController for HomePage
    
    func setupVC() {
        viewControllers = [
            //MARK: -UiImage are not supported below iOS 15, the original was menucard and clock
            createNavigationController(for: PatternViewController(), title: NSLocalizedString("Pattern", comment: ""), image: UIImage(systemName: "line.3.crossed.swirl.circle.fill")!),
            createNavigationController(for: LibraryViewController(), title: NSLocalizedString("Basic Stitch", comment: ""), image: UIImage(systemName: "list.bullet.rectangle")!),
            createNavigationController(for: MyProjectViewController(), title: NSLocalizedString("My Project", comment: ""), image: UIImage(systemName: "person.fill")!)
        ]
    }
    
   
}
