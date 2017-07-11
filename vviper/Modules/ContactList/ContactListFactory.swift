//
//  ContactListFactory.swift
//  vviper
//
//  Created by Xavier Maillot on 11/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation
import UIKit

class ContactListFactory {
    
    static func initContactListModule() -> UIViewController {
        let storyboard = UIStoryboard.init(name: "ContactList", bundle: nil)
        let contactListVC = storyboard.instantiateInitialViewController() as! ContactListVC
        
        let router = ContactListRouter()
        let interactor = ContactListInteractor()
        
        let presenter = ContactListPresenter()
        presenter.interactor = interactor
        presenter.router = router
        presenter.viewController = contactListVC
        
        contactListVC.presenter = presenter
        
        return contactListVC
    }
}
