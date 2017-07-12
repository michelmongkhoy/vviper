//
//  HomeFactory.swift
//  vviper
//
//  Created by Xavier Maillot on 12/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import UIKit

class HomeFactory {
    
    static func create() -> UIViewController {
        
        let contactListVC = ContactListFactory.initContactListModule(member: nil)
        let contactDetailVC = ContactDetailFactory.initContactDetailModule(contact: "Michel")
        
        let storyboard = UIStoryboard.init(name: "Home", bundle: nil)
        let homeVC = storyboard.instantiateInitialViewController() as! HomeVC
        
//        homeVC.contactDetailVC = UINavigationController(rootViewController: contactDetailVC)
//        homeVC.contactListVC = UINavigationController(rootViewController: contactListVC)

        homeVC.contactDetailVC = contactDetailVC
        homeVC.contactListVC = contactListVC
        
        let router = HomeRouter()
        router.inViewController = homeVC

        let interactor = HomeInteractor()

        let presenter = HomePresenter()
        presenter.interactor = interactor
        presenter.router = router
        
        homeVC.presenter = presenter
        
        return homeVC
    }
}
