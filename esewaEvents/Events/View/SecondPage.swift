import UIKit

class SecondPage: UITableViewController {
    let container = UIView()
    let eventsbgVC = EventsBG()
//    let searchBar = SearchBarVC()
    let eventVC = EventsVC()
    
    let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add the container view as a subview of the table view
        view.addSubview(container)
        container.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            container.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            container.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            container.topAnchor.constraint(equalTo: view.topAnchor),
            container.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        
        addChild(eventsbgVC)
        container.addSubview(eventsbgVC.view)
        eventsbgVC.didMove(toParent: self)
        
        // Set the navigation item of the parent view controller to the navigation item of the child view controller
        navigationItem.title = eventsbgVC.navigationItem.title
        //        navigationItem.leftBarButtonItem = eventsbgVC.navigationItem.leftBarButtonItem
        
        // Set the color of the back button and title to white
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationItem.titleView = searchController.searchBar
        searchController.searchBar.barTintColor = UIColor.white
        searchController.searchBar.placeholder = "Search"
        searchController.searchBar.tintColor = UIColor.blue
        searchController.searchResultsUpdater = self


    }
}

extension SecondPage: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        // Perform search here
    }
}
