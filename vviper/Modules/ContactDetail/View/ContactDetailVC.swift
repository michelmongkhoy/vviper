//
//  ContactDetail.swift
//  vviper
//
//  Created by Xavier Maillot on 11/07/2017.
//  Copyright © 2017 Viadeo. All rights reserved.
//

import Foundation
import UIKit

class ContactDetailVC: UIViewController {
    
    @IBOutlet weak var contactLabel: UILabel?
    
    var presenter: ContactDetailPresenter?
    func subscriptionDataHasChanged(title: String) -> Void {
    
        self.contactLabel?.text = title
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let presenter = presenter else {
            return
        }
        
        presenter.dataHasChanged = subscriptionDataHasChanged
        
        presenter.reloadData()
    }
}
