//
//  ContactListPresenter.swift
//  vviper
//
//  Created by mmongkhoy on 10/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation

struct ContactListPresenter {

    var interactor: ContactListInteractor?
    var backgroundHasChanged: ((Bool) -> Void)?
    
    func reloadData() {
        guard let interactor = interactor else {
            return
        }
        interactor.loadDataFromServer { (result) in

            self.backgroundHasChanged!(result)

        }
    }
}
