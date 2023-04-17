import UIKit

class SearchBarVC: UIViewController, UISearchBarDelegate {
    
    let containerView = UIView()
    let searchBar = UISearchBar()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configure container view
        containerView.backgroundColor = .white
        containerView.layer.cornerRadius = 20
        containerView.layer.masksToBounds = true
        containerView.frame = CGRect(x: 0, y: 0, width: 370, height: 70)
        
        // Configure search bar
        searchBar.delegate = self
        searchBar.placeholder = "What are you searching for?"
        searchBar.searchBarStyle = .minimal
        
        // Add subviews
        containerView.addSubview(searchBar)
        view.addSubview(containerView)
        
        // Set up constraints
        containerView.translatesAutoresizingMaskIntoConstraints = false
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            containerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            containerView.heightAnchor.constraint(equalToConstant: 50),
            
            searchBar.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            searchBar.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            searchBar.topAnchor.constraint(equalTo: containerView.topAnchor),
            searchBar.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
        ])
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        // Implement your search functionality here
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
        searchBar.text = ""
    }
}
