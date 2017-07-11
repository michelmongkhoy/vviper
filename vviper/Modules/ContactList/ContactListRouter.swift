//
//  ContactListRouter.swift
//  vviper
//
//  Created by mmongkhoy on 10/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation
import UIKit

struct ContactListRouter {

    func showContactDetails(inViewController: UIViewController?, contact: String?) {
        let contactDetailVC = ContactDetailFactory.initContactDetailModule(contact: contact)
        inViewController?.navigationController?.pushViewController(contactDetailVC, animated: true)
    }
}
