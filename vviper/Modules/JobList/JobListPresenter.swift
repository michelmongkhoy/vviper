//
//  HomePresenter.swift
//  vviper
//
//  Created by Xavier Maillot on 12/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation

class JobListPresenter {
    
    var interactor: JobListInteractor?
    var router: JobListRouter?
    
    func saveFavorite(withJobName name:String) -> Void {
        self.interactor?.saveFavorite(withJobName: name)
    }
    
}
