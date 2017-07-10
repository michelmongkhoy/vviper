//
//  ContactList.swift
//  vviper
//
//  Created by mmongkhoy on 10/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation
import UIKit

class ContactListVC: UITableViewController {

    var presenter: ContactListPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()

        guard var presenter = presenter else {
            return
        }

        presenter.backgroundHasChanged = { (result) in
            if (result) {
                self.tableView.backgroundColor = UIColor.blue
            }
        }

        presenter.reloadData()
    }

}
