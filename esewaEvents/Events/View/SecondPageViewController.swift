//
//  SecondPageViewController.swift
//  esewaEvents
//
//  Created by Sabir's MacBook on 4/17/23.
//

import UIKit

class SecondPageViewController: UIViewController {

    let tableView = UITableView()
    let searchController = UISearchController(searchResultsController: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        addSearchBar()
        // Do any additional setup after loading the view.
    }

    private func setupViews() {
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = UIColor(red: 237/255.0, green: 238/255.0, blue: 242/255.0, alpha: 1)
        navigationItem.title = "Events"


//        UIColor(red: 237/255.0, green: 238/255.0, blue: 242/255.0, alpha: 1)


         // pin the table view to the main view of the view controller
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])

        tableView.register(AdBannerTableViewCell.self, forCellReuseIdentifier: AdBannerTableViewCell.reuseIdentifier)
    }
    
    private func addSearchBar() {
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false

        searchController.searchBar.placeholder = "What are you searching for?"
        searchController.searchBar.tintColor = .white
    }
}

extension SecondPageViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AdBannerTableViewCell.reuseIdentifier, for: indexPath) as! AdBannerTableViewCell
        cell.backgroundColor = UIColor(red: 237/255.0, green: 238/255.0, blue: 242/255.0, alpha: 1)
        return cell
    }



}

extension SecondPageViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

    }
}
