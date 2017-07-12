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
//        let contactListVC = ContactListFactory.initContactListModule(member: nil)
//        let navigationViewController = UINavigationController(rootViewController: contactListVC)
//        inWindow?.rootViewController = navigationViewController
        
        let HomeVC = HomeFactory.create()
        inWindow?.rootViewController = HomeVC
    }
    
}