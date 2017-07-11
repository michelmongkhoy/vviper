//
//  ContactListPresenter.swift
//  vviper
//
//  Created by mmongkhoy on 10/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation
import UIKit

class ContactListPresenter {

    weak var viewController: UIViewController?
    
    var interactor: ContactListInteractor?
    
    var router: ContactListRouter?
    
    var dataHasChanged: (([String]?) -> Void)?
    
    func reloadData() {
        guard let interactor = interactor else {
            return
        }
        
        interactor.loadDataFromServer { (result) in
            self.dataHasChanged!(result)
        }
    }
    
    func presentContactListDetails(contact: String?) {
        router?.showContactDetails(inViewController: viewController, contact: contact)
    }
    
}
