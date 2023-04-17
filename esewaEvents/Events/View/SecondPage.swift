import UIKit

class SecondPage: UITableViewController {
    let container = UIView()
    let eventsbgVC = EventsBG()
    let searchBar = SearchBarVC()
    let eventVC = EventsVC()

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

        // Add the child view controllers to the container view
        addChild(searchBar)
        container.addSubview(searchBar.view)
        searchBar.didMove(toParent: self)

        addChild(eventVC)
        container.addSubview(eventVC.view)
        eventVC.didMove(toParent: self)

//        searchBar.view.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            searchBar.view.leadingAnchor.constraint(equalTo: container.leadingAnchor),
//            searchBar.view.trailingAnchor.constraint(equalTo: container.trailingAnchor),
//            searchBar.view.topAnchor.constraint(equalTo: container.topAnchor),
//        ])

    }
}
