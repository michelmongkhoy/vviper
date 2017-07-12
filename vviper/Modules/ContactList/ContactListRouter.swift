//
//  ContactListRouter.swift
//  vviper
//
//  Created by mmongkhoy on 10/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation
import UIKit

class ContactListRouter {
    
    weak var inViewController: UIViewController?

    func showContactDetails(contact: String?) {
        let contactDetailVC = ContactDetailFactory.initContactDetailModule(contact: contact)
        inViewController?.navigationController?.pushViewController(contactDetailVC, animated: true)
    }
}
