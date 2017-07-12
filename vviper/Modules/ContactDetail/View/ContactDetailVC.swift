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
    
    @IBOutlet weak var constactsButton: UIButton?
    
    var presenter: ContactDetailPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let presenter = presenter else {
            return
        }
        
        presenter.dataHasChanged = subscriptionDataHasChanged
        
        presenter.reloadData()
    }
    
    @IBAction func goToContactList(_ sender: Any) {
        presenter?.presentContactListForMember()
    }
    
    // MARK: SUBSCRIPTIONS CALLBACK
    
    func subscriptionDataHasChanged(title: String?) -> Void {
        self.contactLabel?.text = title
    }
}
