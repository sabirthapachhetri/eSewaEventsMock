//
//  EventsDataModel.swift
//  esewaEvents
//
//  Created by Sabir's MacBook on 4/23/23.
//

import Foundation
import Alamofire
import SwiftyJSON

struct EventsDataModel {
    var embedded: Embedded?
}

struct Embedded {
    var events: [EmbeddedEvents]?
    
    init(json: JSON) {
        self.events = json["events"].arrayValue.map { // for array
            EmbeddedEvents(json: $0)
        }
    }
}

struct EmbeddedEvents {
    var name: String?
    var images: [EventsImages]?
    var dates: Dates?
    var priceRanges: [PriceRanges]?
    
    init(json: JSON) {
        
        self.name = json["name"].string
        
        self.images = json["images"].arrayValue.map { // for array
            EventsImages(json: $0)
        }
        
        self.dates = Dates(json: json["dates"])  // for json
        
        self.priceRanges = json["priceRanges"].arrayValue.map { // for array
            PriceRanges(json: $0)
        }
    }
}

struct EventsImages {
    var ratio: String?
    var url: String?
    var width: Int?
    var height: Int?
    
    init(json: JSON) {
        self.ratio = json["ratio"].string  // for each properties
        self.url = json["url"].string
        self.width = json["width"].int
        self.height = json["height"].int
        
    }
}

struct Dates {
    var start: Start?
    init(json: JSON) {
        self.start = Start(json: json["start"])
    }
}

struct Start {
    var localDate: String?
    var localTime: String?
    var dateTime: String?
    
    init(json: JSON) {
        self.localDate = json["localDate"].string
        self.localTime = json["localTime"].string
        self.dateTime = json["localTime"].string
    }
}

struct PriceRanges {
    var type: String?
    var currency: String?
    var min: Double?
    var max: Double?
    
    init(json: JSON) {
        self.type = json["type"].string
        self.currency = json["currency"].string
        self.min = json["min"].double
        self.max = json["max"].double
    }
}






