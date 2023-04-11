//
//  FirstScreen.swift
//  esewaEvents
//
//  Created by Sabir's MacBook on 4/11/23.
//

import UIKit

class FirstScreen: UIViewController {
    
    let totalBalanceVC = TotalBalance()
    let bgVC = BG()
    let eventVC = EventView()
    let contactVC = ContactView()
    let submitVC = SubmitView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add the BG as a child view controller
        addChild(bgVC)
        view.addSubview(bgVC.view)
        bgVC.didMove(toParent: self)
        
        // Set the navigation item of the parent view controller to the navigation item of the child view controller
        navigationItem.title = bgVC.navigationItem.title
        navigationItem.leftBarButtonItem = bgVC.navigationItem.leftBarButtonItem
        
        // Set the color of the back button and title to white
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        
        // Add the TotalBalance as a child view controller
        addChild(totalBalanceVC)
        view.addSubview(totalBalanceVC.view)
        totalBalanceVC.view.frame = CGRect(x: 0, y: 0, width: 370, height: 70)
        totalBalanceVC.didMove(toParent: self)
                
        // Add constraints to pin totalBalanceVC near the top safe area
        totalBalanceVC.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            totalBalanceVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            totalBalanceVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            totalBalanceVC.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -310) // adjust the top spacing as needed
                ])
        
        // Add the EventView as a child view controller
        addChild(eventVC)
        view.addSubview(eventVC.view)
        eventVC.view.frame = CGRect(x: 0, y: 0, width: 370, height: 160)
        eventVC.didMove(toParent: self)

        // Add constraints to pin totalBalanceVC near the top safe area
        eventVC.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            eventVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            eventVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            eventVC.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 110) // adjust the top spacing as needed
                ])
        
        // Add the TotalBalance as a child view controller
        addChild(contactVC)
        view.addSubview(contactVC.view)
        contactVC.view.frame = CGRect(x: 0, y: 0, width: 370, height: 70)
        contactVC.didMove(toParent: self)
                
        // Add constraints to pin totalBalanceVC near the top safe area
        contactVC.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contactVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contactVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contactVC.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 500)
                ])
        
        // Add the TotalBalance as a child view controller
        addChild(submitVC)
        view.addSubview(submitVC.view)
        submitVC.view.frame = CGRect(x: 0, y: 0, width: 370, height: 70)
        submitVC.didMove(toParent: self)
                
        // Add constraints to pin totalBalanceVC near the top safe area
        submitVC.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            submitVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            submitVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            submitVC.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 630)
                ])
        
        }
}

