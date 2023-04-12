//
//  PreviousScreenViewController.swift
//  esewaEvents
//
//  Created by Sabir's MacBook on 4/11/23.
//

import UIKit

class PreviousScreen: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        
        let ticketSummaryVC = TicketSummaryView()
        
        // Add the ticket summar as a child view controller
        addChild(ticketSummaryVC)
        view.addSubview(ticketSummaryVC.view)
        ticketSummaryVC.didMove(toParent: self)

    }
}
