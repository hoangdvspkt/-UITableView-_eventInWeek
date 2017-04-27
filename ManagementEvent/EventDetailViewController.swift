//
//  EventDetailViewController.swift
//  ManagementEvent
//
//  Created by hoangdv on 4/27/17.
//  Copyright © 2017 hoangdv. All rights reserved.
//

import UIKit

class EventDetailViewController: UIViewController {
    
    //showEvent
    var dateEvent: String?
    var event: Event?
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var detailText: UITextView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        detailText.text = event?.detail
        dateLabel.text = dateEvent
        
    }
    
}
