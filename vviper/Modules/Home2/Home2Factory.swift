//
//  Home2Factory.swift
//  vviper
//
//  Created by Xavier Maillot on 12/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import UIKit

class Home2Factory {

    static func create() -> Home2VC {
        
        let jobListVC =  JobListFactory.create()
        let jobFavoriteListVC = JobFavoriteListFactory.create()
        
        let storyboard = UIStoryboard.init(name: "Home2", bundle: nil)
        let home2VC = storyboard.instantiateInitialViewController() as! Home2VC
        
        home2VC.jobListVC = jobListVC
        home2VC.jobFavoriteListVC = jobFavoriteListVC

        home2VC.addChildViewController(jobListVC)
        home2VC.addChildViewController(jobFavoriteListVC)
        
        let router = Home2Router()
        router.inViewController = home2VC
        
        let interactor = Home2Interactor()
        
        let presenter = Home2Presenter()
        presenter.interactor = interactor
        presenter.router = router
        
        home2VC.presenter = presenter
        
        return home2VC

    }
    
}
