//
//  Home2VC.swift
//  vviper
//
//  Created by Xavier Maillot on 12/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import UIKit

class Home2VC: UITabBarController, UITabBarControllerDelegate {
    
    weak var jobListVC: JobListVC?
    weak var jobFavoriteListVC: JobFavoriteListVC?
    
    
    
    var presenter: Home2Presenter?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let tabOneBarItem = UITabBarItem(title: "Tab 1", image: UIImage(named: "defaultImage.png"), selectedImage: UIImage(named: "selectedImage.png"))
        
        jobListVC?.tabBarItem = tabOneBarItem
        
        
        // Create Tab two
        let tabTwoBarItem2 = UITabBarItem(title: "Tab 2", image: UIImage(named: "defaultImage2.png"), selectedImage: UIImage(named: "selectedImage2.png"))
        
        jobFavoriteListVC?.tabBarItem = tabTwoBarItem2
        
        
        self.viewControllers = [jobListVC!, jobFavoriteListVC!]
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        print("coucou")
    }
    
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
