//
//  HomeVC.swift
//  vviper
//
//  Created by Xavier Maillot on 12/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation
import UIKit

class HomeVC: UITabBarController, UITabBarControllerDelegate {
    
    weak var contactListVC: ContactListVC?
    weak var contactDetailVC: ContactDetailVC?
    
    var presenter: HomePresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Assign self for delegate for that ViewController can respond to UITabBarControllerDelegate methods
        self.delegate = self
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let tabOneBarItem = UITabBarItem(title: "Tab 1", image: UIImage(named: "defaultImage.png"), selectedImage: UIImage(named: "selectedImage.png"))
        
        contactListVC?.tabBarItem = tabOneBarItem
        
        
        // Create Tab two
        let tabTwoBarItem2 = UITabBarItem(title: "Tab 2", image: UIImage(named: "defaultImage2.png"), selectedImage: UIImage(named: "selectedImage2.png"))
        
        contactDetailVC?.tabBarItem = tabTwoBarItem2
        
        
        self.viewControllers = [contactListVC!, contactDetailVC!]
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print("coucou")
    }
}
