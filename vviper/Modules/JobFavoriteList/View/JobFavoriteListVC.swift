//
//  HomeVC.swift
//  vviper
//
//  Created by Xavier Maillot on 12/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation
import UIKit

class JobFavoriteListVC: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: JobFavoriteListPresenter?
    
    var table: [String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let presenter = presenter else {
            return
        }
        
        // Subscriptions
        presenter.reload = subscriptionDataHasChanged
        
        if let datas = self.presenter?.loadDatas() {
            self.table = datas
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let dataSource = self.table else {
            return 0
        }
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = self.table?[indexPath.row]
        return cell
    }
    
    // MARK: SUBSCRIPTIONS CALLBACK
    
    func subscriptionDataHasChanged(result:[String]?) -> Void {
        self.table = result
        self.tableView?.reloadData()
    }
}
