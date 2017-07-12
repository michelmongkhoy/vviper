//
//  HomeFactory.swift
//  vviper
//
//  Created by Xavier Maillot on 12/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import UIKit

class JobFavoriteListFactory {
    
    static func create() -> JobFavoriteListVC {
        
        let storyboard = UIStoryboard.init(name: "JobFavoriteList", bundle: nil)
        let vc = storyboard.instantiateInitialViewController() as! JobFavoriteListVC
        
        let router = JobFavoriteListRouter()
        router.inViewController = vc
        
        let interactor = JobFavoriteListInteractor()
        
        let presenter = JobFavoriteListPresenter()
        presenter.interactor = interactor
        presenter.router = router
        
        vc.presenter = presenter
        
        return vc
    }
}
