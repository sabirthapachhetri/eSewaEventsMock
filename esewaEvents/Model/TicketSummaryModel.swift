//
//  TicketSummaryModel.swift
//  esewaEvents
//
//  Created by Sabir's MacBook on 4/12/23.
//

import Foundation

// DEFINING MODEL
struct Ticket {
    let name: String
    let price: Double
}


class TicketSummaryModel {
    let tickets: [Ticket] = [
        Ticket(name: "Silver Ticket", price: 666),
        Ticket(name: "Gold Ticket", price: 5999),
        Ticket(name: "Diamond Ticket", price: 1111)
    ]
    
    let cashBack: Double = 100
    
    var subtotal: Double {
        var total: Double = 0.0
        for ticket in tickets {
            total += ticket.price
        }
        return total
    }
    
    var grandTotal: Double {
        subtotal - cashBack
    }

}
