//
//  JobOfferFavoriteUseCase.swift
//  vviper
//
//  Created by Xavier Maillot on 13/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation

class JobOfferFavoriteUseCase {
    func saveJobOfferFavorite(withJobName jobName:String) -> Void {
        JobOfferFavoriteStore.storeFavorite(jobOffer: jobName)
        NotificationCenter.default.post(JobOfferFavoriteAddEvent(jobOffer: JobOfferFavorite(name: jobName)).notification)
    }
    
    func getJobOfferFavorites() -> [String]? {
        return JobOfferFavoriteStore.jobOfferFavorites
    }
}
