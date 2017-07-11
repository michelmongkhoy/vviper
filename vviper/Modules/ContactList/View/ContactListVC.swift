//
//  ContactList.swift
//  vviper
//
//  Created by mmongkhoy on 10/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation
import UIKit

class ContactListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView?
    
    var presenter: ContactListPresenter?
    
    var table: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard let presenter = presenter else {
            return
        }
        
        // Subscriptions
        presenter.dataHasChanged = subscriptionDataHasChanged
        
        // Load data
        presenter.reloadData()
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let table = self.table else {
            return 0
        }
        return table.count

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = self.table?[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let contact = self.table?[indexPath.row]
        self.presenter?.presentContactListDetails(contact: contact)
    }
    
    // MARK: SUBSCRIPTIONS CALLBACK
    
    func subscriptionDataHasChanged(result:[String]?) -> Void {
        self.table = result
        self.tableView?.reloadData()
    }

}
