//
//  EventView.swift
//  esewaEvents
//
//  Created by Sabir's MacBook on 4/11/23.
//

import UIKit

class EventView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let containerView = UIView()
        containerView.backgroundColor = .white
        containerView.layer.cornerRadius = 20
        containerView.layer.masksToBounds = true
        containerView.translatesAutoresizingMaskIntoConstraints = false

        let titleLabel = UILabel()
        titleLabel.text = "International Conference on Sustainable Water Management (ICBMSE)"
        titleLabel.textColor = UIColor.black
        titleLabel.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        titleLabel.numberOfLines = 0
        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        let dateLabel = UILabel()
        dateLabel.text = "Date"
        dateLabel.textColor = UIColor.gray
        dateLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        dateLabel.translatesAutoresizingMaskIntoConstraints = false

        let locationLabel = UILabel()
        locationLabel.text = "Brikutimandap, Ktm"
        locationLabel.textColor = UIColor.black
        locationLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        locationLabel.translatesAutoresizingMaskIntoConstraints = false

        let eventVenueLabel = UILabel()
        eventVenueLabel.text = "Event Venue"
        eventVenueLabel.textColor = UIColor.gray
        eventVenueLabel.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        eventVenueLabel.translatesAutoresizingMaskIntoConstraints = false

        let dateTimeLabel = UILabel()
        dateTimeLabel.text = "28 Mar, 2023, 02:00 PM"
        dateTimeLabel.textColor = UIColor.black
        dateTimeLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        dateTimeLabel.translatesAutoresizingMaskIntoConstraints = false

        containerView.addSubview(titleLabel)
        containerView.addSubview(dateLabel)
        containerView.addSubview(locationLabel)
        containerView.addSubview(eventVenueLabel)
        containerView.addSubview(dateTimeLabel)

        NSLayoutConstraint.activate([
            containerView.widthAnchor.constraint(equalToConstant: 370),
            containerView.heightAnchor.constraint(equalToConstant: 180),
            
            titleLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            
            dateLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            dateLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            
            locationLabel.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 2),
            locationLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            
            eventVenueLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 25),
            eventVenueLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -112),
            
            dateTimeLabel.topAnchor.constraint(equalTo: eventVenueLabel.bottomAnchor, constant: 2),
            dateTimeLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
        ])
        
        view.addSubview(containerView)
        containerView.center = view.center
    }
}
