//
//  ContactListFactory.swift
//  vviper
//
//  Created by Xavier Maillot on 11/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation
import UIKit

class ContactDetailFactory {
    
    static func initContactListModule() -> UIViewController {
        let storyboard = UIStoryboard.init(name: "ContactDetail", bundle: nil)
        let contactDetailVC = storyboard.instantiateInitialViewController() as! ContactDetailVC
        
        let router = ContactDetailRouter()
        let interactor = ContactDetailInteractor(router: router)
        
        let presenter = ContactDetailPresenter(interactor: interactor, dataHasChanged: nil)
        contactDetailVC.presenter = presenter
        
        return contactDetailVC
    }
}
