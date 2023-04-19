import UIKit

class UpcomingEventsTableViewCell: UITableViewCell {
    
    private let cellReuseIdentifier = "UpcomingEventsTableViewCell"
    static let reuseIdentifier = "UpcomingEventsTableViewCell"
    
    // Initialize collectionView
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumInteritemSpacing = 10
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = .yellow
        collectionView.showsHorizontalScrollIndicator = false
        return collectionView
        
    }()
        
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // Add the collectionView to the contentView
        contentView.addSubview(collectionView)
        setupCollectionView()
        
        // Set the dataSource and delegate of the collectionView
        collectionView.dataSource = self
        collectionView.delegate = self
        
//         Activate constraints
        NSLayoutConstraint.activate([
            collectionView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20),
            collectionView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            collectionView.topAnchor.constraint(equalTo: contentView.topAnchor),
            collectionView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            collectionView.heightAnchor.constraint(equalToConstant: 80),
//            collectionView.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        // Register cell
        collectionView.register(UpcomingEventCell.self, forCellWithReuseIdentifier: cellReuseIdentifier)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupCollectionView() {
        collectionView.backgroundColor = .clear
    }
}

extension UpcomingEventsTableViewCell: UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellReuseIdentifier, for: indexPath) as! UpcomingEventCell
        return cell
    }
}

extension UpcomingEventsTableViewCell: UICollectionViewDelegateFlowLayout {

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 170, height: 80)
    }
}

class UpcomingEventCell: UICollectionViewCell {
    
    var todayLabel = UILabel()
    var dateLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 20

        todayLabel.text = "Today"
        todayLabel.textColor = UIColor(red: 48/255, green: 219/255, blue: 65/255, alpha: 1.0)
        todayLabel.font = UIFont.boldSystemFont(ofSize: 18)
        todayLabel.textAlignment = .left
        todayLabel.adjustsFontSizeToFitWidth = true
        todayLabel.minimumScaleFactor = 0.5
        todayLabel.numberOfLines = 1
        contentView.addSubview(todayLabel)
        
        dateLabel.textColor = .black
        dateLabel.font = UIFont.systemFont(ofSize: 16)
        dateLabel.adjustsFontSizeToFitWidth = true
        dateLabel.minimumScaleFactor = 0.5
        dateLabel.numberOfLines = 1
//        dateLabel.kerning = 1.9
        let attributedString = NSMutableAttributedString(string: "22 Mar, Tue")
        attributedString.addAttribute(NSAttributedString.Key.kern, value: 1.9, range: NSRange(location: 0, length: attributedString.length))
        dateLabel.attributedText = attributedString
        contentView.addSubview(dateLabel)
        
        todayLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            todayLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            todayLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            todayLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
        
        dateLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            dateLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            dateLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -18),
            dateLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -56)
        ])
    }


    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
