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
        tableView.separatorStyle = .none
        tableView.backgroundColor = UIColor(red: 237/255.0, green: 238/255.0, blue: 242/255.0, alpha: 1)
        tableView.showsVerticalScrollIndicator = false
        navigationItem.title = "Events"

         // pin the table view to the main view of the view controller
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])

        tableView.register(AdBannerTableViewCell.self, forCellReuseIdentifier: AdBannerTableViewCell.reuseIdentifier)
        tableView.register(UpcomingEventsTableViewCell.self, forCellReuseIdentifier: UpcomingEventsTableViewCell.reuseIdentifier)
        tableView.register(FeaturedEventsTableViewCell.self, forCellReuseIdentifier: FeaturedEventsTableViewCell.reuseIdentifier)
        tableView.register(NewEventsTableViewCell.self, forCellReuseIdentifier: NewEventsTableViewCell.reuseIdentifier)
        tableView.register(ArtistsTableViewCell.self, forCellReuseIdentifier: ArtistsTableViewCell.reuseIdentifier)
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
        return 5
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return ""
        case 1:
            return "Upcoming Events"
        case 2:
            return "🔥 Featured Events"
        case 3:
            return "📅 New Events"
        case 4:
            return "🎙️ Artists"
        default:
            return nil
        }
     }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: AdBannerTableViewCell.reuseIdentifier, for: indexPath) as! AdBannerTableViewCell
            cell.backgroundColor = UIColor(red: 237/255.0, green: 238/255.0, blue: 242/255.0, alpha: 1)
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: UpcomingEventsTableViewCell.reuseIdentifier, for: indexPath) as! UpcomingEventsTableViewCell
            cell.backgroundColor = UIColor(red: 237/255.0, green: 238/255.0, blue: 242/255.0, alpha: 1)
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: FeaturedEventsTableViewCell.reuseIdentifier, for: indexPath) as! FeaturedEventsTableViewCell
            cell.backgroundColor = UIColor(red: 237/255.0, green: 238/255.0, blue: 242/255.0, alpha: 1)
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: NewEventsTableViewCell.reuseIdentifier, for: indexPath) as! NewEventsTableViewCell
            cell.backgroundColor = UIColor(red: 237/255.0, green: 238/255.0, blue: 242/255.0, alpha: 1)
            return cell
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: ArtistsTableViewCell.reuseIdentifier, for: indexPath) as! ArtistsTableViewCell
            cell.backgroundColor = UIColor(red: 237/255.0, green: 238/255.0, blue: 242/255.0, alpha: 1)
            return cell
        }
    }
}
    
    extension SecondPageViewController: UITableViewDelegate {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
        }
    }