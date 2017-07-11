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
    var dataHasChanged: (([String]) -> Void)?
    
    func reloadData() {
        guard let interactor = interactor else {
            return
        }
        
        interactor.loadDataFromServer { (result) in
            self.dataHasChanged!(result)
        }
    }
    
    func presentContactListDitails(cellContent: String) -> Void {
        print("presentContactListDitails " + cellContent)
    }
}
