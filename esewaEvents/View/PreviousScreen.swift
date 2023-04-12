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
        
        view.backgroundColor = .systemGreen
        
        let ticketSummaryVC = TicketSummaryView()
        
        // Add the ticket summar as a child view controller
        addChild(ticketSummaryVC)
        view.addSubview(ticketSummaryVC.view)
        ticketSummaryVC.view.frame = CGRect(x: 0, y: 0, width: 390, height: 250)
        ticketSummaryVC.didMove(toParent: self)

    }
}
