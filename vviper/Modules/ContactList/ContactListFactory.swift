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
    
    static func initContactListModule(member: String?) -> ContactListVC {
        
        let storyboard = UIStoryboard.init(name: "ContactList", bundle: nil)
        let contactListVC = storyboard.instantiateInitialViewController() as! ContactListVC
        
        let interactor = ContactListInteractor()
        
        let router = ContactListRouter()
        router.inViewController = contactListVC
        
        let presenter = ContactListPresenter()
        presenter.interactor = interactor
        presenter.router = router
        presenter.member = member
        
        contactListVC.presenter = presenter
        
        return contactListVC
    }
}
