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

    var presenter: ContactListPresenter?
        
    var table: [String]?
    
    @IBOutlet weak var tableView: UITableView?
    
    func subscriptionDataHasChanged(result:[String]) -> Void {
        self.table = result
        self.tableView?.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        guard  var presenter = presenter else {
            return
        }
        
        presenter.dataHasChanged = subscriptionDataHasChanged
        
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
        let cell = tableView.cellForRow(at: indexPath)
        
        guard let cellContent = cell?.textLabel?.text else {
            return
        }

        self.presenter?.presentContactListDitails(cellContent: cellContent)
        
        /* OLD FASHION WAY of XMAILLOT */
        //        if let cellContent =  cell?.textLabel?.text {
        //            self.presenter?.presentContactListDitails(cellContent: cellContent)
        //        }
    }

}
