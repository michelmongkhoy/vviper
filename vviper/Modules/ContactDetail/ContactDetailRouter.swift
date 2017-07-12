//
//  ContactDetailRouter.swift
//  vviper
//
//  Created by Xavier Maillot on 11/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation
import UIKit

class ContactDetailRouter {
    
    weak var inViewController: UIViewController?
    
    func showContactListForMember(member: String?) {
        let contactListVC = ContactListFactory.initContactListModule(member: member)
        inViewController?.navigationController?.pushViewController(contactListVC, animated: true)
    }
    
}
