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
        let storyboard = UIStoryboard.init(name: "ContactListStoryboard", bundle: nil)
        let contactListVC = storyboard.instantiateInitialViewController() as! ContactListVC
        
        let router = ContactListRouter()
        let interactor = ContactListInteractor(router: router)
        
        let presenter = ContactListPresenter(interactor: interactor, dataHasChanged: nil)
        contactListVC.presenter = presenter
        
        return contactListVC
    }
}
