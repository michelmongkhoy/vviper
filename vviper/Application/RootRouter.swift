//
//  RootRouter.swift
//  vviper
//
//  Created by Xavier Maillot on 11/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation
import UIKit

class RootRouter {
    
    func presentContactList(inWindow: UIWindow?) {
        
        // CASE 1 : Show the first HOME example

//        let contactListVC = ContactListFactory.initContactListModule(member: nil)
//        let navigationViewController = UINavigationController(rootViewController: contactListVC)
//        inWindow?.rootViewController = navigationViewController
        
//        let HomeVC = HomeFactory.create()
//        inWindow?.rootViewController = HomeVC
        
        // CASE 2 : Showing the Favorite example
        
        let vc = Home2Factory.create()
        inWindow?.rootViewController = vc
    }
    
}
