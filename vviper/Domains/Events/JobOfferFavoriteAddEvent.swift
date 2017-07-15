//
//  JobOfferFavoriteAddEvent.swift
//  vviper
//
//  Created by Xavier Maillot on 13/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation

struct JobOfferFavoriteAddEvent {
    
    static let name = Notification.Name("JobOfferFavoriteAddEvent")
    let notification: Notification
    
    init(jobOffer: JobOfferFavorite) {
        notification = Notification.init(name: JobOfferFavoriteAddEvent.name, object: jobOffer, userInfo:nil)
    }
    
}
