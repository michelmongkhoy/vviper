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
    
    var member: String?
    
    var dataHasChanged: ((String?) -> Void)?
    
    func reloadData() {
        dataHasChanged!(member)
    }
    
    func presentContactListForMember() {
        router?.showContactListForMember(member: member)
    }
}
