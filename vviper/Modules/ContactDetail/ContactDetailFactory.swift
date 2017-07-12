//
//  ContactDetailFactory.swift
//  vviper
//
//  Created by Xavier Maillot on 11/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation
import UIKit


class ContactDetailFactory {
    
    static func initContactDetailModule(contact: String?) -> UIViewController {
        
        let storyboard = UIStoryboard.init(name: "ContactDetail", bundle: nil)
        let contactDetailVC = storyboard.instantiateInitialViewController() as! ContactDetailVC
        
        let router = ContactDetailRouter()
        router.inViewController = contactDetailVC
        let interactor = ContactDetailInteractor()
        
        let presenter = ContactDetailPresenter()
        presenter.interactor = interactor
        presenter.router = router
        presenter.viewController = contactDetailVC
        presenter.member = contact
        
        contactDetailVC.presenter = presenter
        
        return contactDetailVC
    }
    
}
