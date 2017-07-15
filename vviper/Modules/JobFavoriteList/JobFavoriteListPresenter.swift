//
//  HomePresenter.swift
//  vviper
//
//  Created by Xavier Maillot on 12/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation

class JobFavoriteListPresenter {
    
    var interactor: JobFavoriteListInteractor
    var router: JobFavoriteListRouter?
    var reload: (([String]?) -> Void)?
    
    init(interactor: JobFavoriteListInteractor) {
        self.interactor = interactor
    }
    
    func loadDatas() -> [String]? {
        return interactor.getJobOfferFavorites()
    }
}
