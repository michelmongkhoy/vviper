//
//  ContactDetailPresenter.swift
//  vviper
//
//  Created by Xavier Maillot on 11/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation

class ContactDetailPresenter {
    
    var interactor: ContactDetailInteractor?
    var dataHasChanged: ((String) -> Void)?
    
    func reloadData() {
        /*
        guard let interactor = interactor else {
            return
        }
        
        interactor.loadDataFromServer { (result) in
            self.dataHasChanged!(result)
        }*/
    }
}
