//
//  HomeInteractor.swift
//  vviper
//
//  Created by Xavier Maillot on 12/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation

class JobFavoriteListInteractor {
    
    var presenter : JobFavoriteListPresenter?
    
    let jobOfferFavoriteUseCase: JobOfferFavoriteUseCase
    
    init() {
        self.jobOfferFavoriteUseCase = JobOfferFavoriteUseCase()
        self.subscribeToNotificationCenter()
    }
    
    func subscribeToNotificationCenter() -> Void {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(self.didReceiveJobListJobSelectedNotification(notification:)),
                                               name: JobOfferFavoriteAddEvent.name,
                                               object: nil)
    }
    
    @objc func didReceiveJobListJobSelectedNotification(notification: Notification) {
        let datas = self.getJobOfferFavorites()
        self.presenter?.reload?(datas)
    }
    
    func getJobOfferFavorites() -> [String]? {
        return jobOfferFavoriteUseCase.getJobOfferFavorites()
    }

}
