//
//  BG.swift
//  esewaEvents
//
//  Created by Sabir's MacBook on 4/11/23.
//

import UIKit

class BG: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Add a new green view to the top quarter of the screen
        let greenView = UIView()
        greenView.backgroundColor = UIColor(red: 48/255, green: 219/255, blue: 65/255, alpha: 1.0)
        greenView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(greenView)
        
        NSLayoutConstraint.activate([
            greenView.topAnchor.constraint(equalTo: view.topAnchor),
            greenView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            greenView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            greenView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.175)
        ])
        
        // Set the remaining background color to #F9FBFC
        view.backgroundColor = UIColor(red: 237/255.0, green: 238/255.0, blue: 242/255.0, alpha: 1)
        
        // Make the bottom corners of the green view rounded
        greenView.layer.cornerRadius = 60
        greenView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
        
        // title to navigation bar
        navigationItem.title = "Event Booking"
        
        // Add back button
        let backButton = UIBarButtonItem(image: UIImage(systemName: "chevron.left"), style: .plain, target: self, action: #selector(backButtonTapped))
        backButton.setTitlePositionAdjustment(UIOffset(horizontal: -128, vertical: 0), for: .default) // Adjust the title position
        navigationItem.leftBarButtonItem = backButton

    }
        
    @objc private func backButtonTapped() {
        // Navigate to another screen/view
        let previousScreen = PreviousScreen()
        navigationController?.pushViewController(previousScreen, animated: true)
    }
}
