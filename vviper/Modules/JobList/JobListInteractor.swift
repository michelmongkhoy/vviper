//
//  HomeInteractor.swift
//  vviper
//
//  Created by Xavier Maillot on 12/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation

class JobListInteractor {
    
    var jobOfferFavoriteUseCase: JobOfferFavoriteUseCase
    
    init() {
        self.jobOfferFavoriteUseCase = JobOfferFavoriteUseCase()
    }
    
    func saveFavorite(withJobName jobName:String) -> Void {
        self.jobOfferFavoriteUseCase.saveJobOfferFavorite(withJobName: jobName)
    }
    
}
