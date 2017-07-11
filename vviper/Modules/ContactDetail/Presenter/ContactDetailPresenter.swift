//
//  ContactDetailPresenter.swift
//  vviper
//
//  Created by Xavier Maillot on 11/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation
import UIKit

class ContactDetailPresenter {
    
    var interactor: ContactDetailInteractor?
    
    weak var viewController: UIViewController?
    
    var router: ContactDetailRouter?
    
    var contact: String?
    
    var dataHasChanged: ((String?) -> Void)?
    
    func reloadData() {
        dataHasChanged!(contact)
    }
}
