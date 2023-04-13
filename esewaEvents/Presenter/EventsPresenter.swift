//
//  EventsPresenter.swift
//  esewaEvents
//
//  Created by Sabir's MacBook on 4/13/23.
//

import Foundation

protocol EventsViewDelegate: AnyObject {
    func updateEvents(name: String, venue: String, dateTime:  String)
}

class EventsPresenter {
    
    var events = Events(name: "International Conference on Sustainable Water Management (ICBMSE)",
                        venue: "Budanilkantha, Ktm",
                        dateTime: "13th Apr, 2023, 06:00 PM")
    
    let delegate: EventsViewDelegate?
    weak var view: EventView?
    
    init(view: EventView, delegate: EventsViewDelegate?) {
        self.view = view
        self.delegate = delegate
    }
    
    func updateView() {
        view?.updateEvents(name: events.name, venue: events.venue, dateTime: events.dateTime)
    }
}
