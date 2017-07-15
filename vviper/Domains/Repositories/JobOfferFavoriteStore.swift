//
//  JobOfferL.swift
//  vviper
//
//  Created by Xavier Maillot on 13/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation

class JobOfferFavoriteStore {
    
    static var jobOfferFavorites = [String]()
    
    static func storeFavorite(jobOffer: String) {
        JobOfferFavoriteStore.jobOfferFavorites.append(jobOffer)
    }
}
