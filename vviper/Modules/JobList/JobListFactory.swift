//
//  HomeFactory.swift
//  vviper
//
//  Created by Xavier Maillot on 12/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import UIKit

class JobListFactory {
    
    static func create() -> JobListVC {
        
        let storyboard = UIStoryboard.init(name: "JobList", bundle: nil)
        let vc = storyboard.instantiateInitialViewController() as! JobListVC
        
        let router = JobListRouter()
        router.inViewController = vc
        
        let interactor = JobListInteractor()
        
        let presenter = JobListPresenter()
        presenter.interactor = interactor
        presenter.router = router

        vc.presenter = presenter
        
        return vc
    }
}
