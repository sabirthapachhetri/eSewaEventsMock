//
//  TicketSummaryVIew.swift
//  esewaEvents
//
//  Created by Sabir's MacBook on 4/12/23.
//
import UIKit

//class TicketSummaryVIew: UIViewController {
//
//    let containerView = UIView()
//    let stackView = UIStackView()
//    let ticketSummaryStackView = UIStackView()
//    let subtotalStackView = UIStackView()
//    let cashbackStackView = UIStackView()
//    let grandTotalStackView = UIStackView()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let containerView = UIView()
//        containerView.backgroundColor = .white
//        containerView.layer.cornerRadius = 20
//        containerView.layer.masksToBounds = true
//        containerView.translatesAutoresizingMaskIntoConstraints = false
//
//        let ticketsSummaryLabel = UILabel()
//        ticketsSummaryLabel.text = "Tickets Summary (3)"
//        ticketsSummaryLabel.font = UIFont.systemFont(ofSize: 16, weight: .heavy)
//        ticketsSummaryLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        let silverTicketLabel = UILabel()
//        silverTicketLabel.text = "Silver Ticket X 1"
//        silverTicketLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
//        silverTicketLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        let silverTicketPriceLabel = UILabel()
//        silverTicketPriceLabel.text = "NPR. 999"
//        silverTicketPriceLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
//        silverTicketPriceLabel.textColor = UIColor.gray
//        silverTicketPriceLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        let goldTicketLabel = UILabel()
//        goldTicketLabel.text = "Gold Ticket X 1"
//        goldTicketLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
//        goldTicketLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        let goldTicketPriceLabel = UILabel()
//        goldTicketPriceLabel.text = "NPR. 4999"
//        goldTicketPriceLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
//        goldTicketPriceLabel.textColor = UIColor.gray
//        goldTicketPriceLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        let diamondTicketLabel = UILabel()
//        diamondTicketLabel.text = "Diamond Ticket X 1"
//        diamondTicketLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
//        diamondTicketLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        let diamondTicketPriceLabel = UILabel()
//        diamondTicketPriceLabel.text = "NPR. 8999"
//        diamondTicketPriceLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
//        diamondTicketPriceLabel.textColor = UIColor.gray
//        diamondTicketPriceLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        let subtotalLabel = UILabel()
//        subtotalLabel.text = "Sub Total"
//        subtotalLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
//        subtotalLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        let subtotalPriceLabel = UILabel()
//        subtotalPriceLabel.text = "NPR. 14978"
//        subtotalPriceLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
//        subtotalPriceLabel.textColor = UIColor.gray
//        subtotalPriceLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        let cashbackLabel = UILabel()
//        cashbackLabel.text = "Cashback"
//        cashbackLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
//        cashbackLabel.textColor = UIColor.green
//        cashbackLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        let cashbackPriceLabel = UILabel()
//        cashbackPriceLabel.text = "NPR. 100"
//        cashbackPriceLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
//        cashbackPriceLabel.textColor = UIColor.gray
//        cashbackPriceLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        let grandTotalLabel = UILabel()
//        grandTotalLabel.text = "Grand Total"
//        grandTotalLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
//        grandTotalLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        let grandTotalPriceLabel = UILabel()
//        grandTotalPriceLabel.text = "NPR. 14878"
//        grandTotalPriceLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
//        grandTotalPriceLabel.textColor = UIColor.black
//        grandTotalPriceLabel.translatesAutoresizingMaskIntoConstraints = false
//
//        // Set up stack views
//        stackView.axis = NSLayoutConstraint.Axis.vertical
//        stackView.distribution = .fillEqually
//        stackView.alignment = .center
//        stackView.spacing = 10.0
//
//        stackView.addArrangedSubview(ticketsSummaryLabel)
//        stackView.addArrangedSubview(silverTicketLabel)
//        stackView.addArrangedSubview(goldTicketLabel)
//        stackView.addArrangedSubview(diamondTicketLabel)
//
//
//
//
//
//
//
//
//
//
//
//
//
//        ticketSummaryStackView.axis = .vertical
//        ticketSummaryStackView.spacing = 8.0
//
//        subtotalStackView.axis = .horizontal
//        subtotalStackView.distribution = .equalSpacing
//
//        cashbackStackView.axis = .horizontal
//        cashbackStackView.distribution = .equalSpacing
//
//        grandTotalStackView.axis = .horizontal
//        grandTotalStackView.distribution = .equalSpacing
//
//        // Add views to stack views
//        ticketSummaryStackView.addArrangedSubview(containerView)
//        ticketSummaryStackView.addArrangedSubview(subtotalStackView)
//        ticketSummaryStackView.addArrangedSubview(cashbackStackView)
//        ticketSummaryStackView.addArrangedSubview(grandTotalStackView)
//
//        subtotalStackView.addArrangedSubview(subtotalLabel)
//        subtotalStackView.addArrangedSubview(subtotalPriceLabel)
//
//        cashbackStackView.addArrangedSubview(cashbackLabel)
//        cashbackStackView.addArrangedSubview(cashbackPriceLabel)
//
//        grandTotalStackView.addArrangedSubview(grandTotalLabel)
//        grandTotalStackView.addArrangedSubview(grandTotalPriceLabel)
//
//        stackView.addArrangedSubview(ticketsSummaryLabel)
//        stackView.addArrangedSubview(ticketsSummaryLabel)
//
//        // Add stack view to the view hierarchy
//        view.addSubview(stackView)
//
//        // Set up constraints
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        containerView.translatesAutoresizingMaskIntoConstraints = false
//
//        NSLayoutConstraint.activate([
//            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 16.0),
//            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16.0),
//            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16.0),
//            stackView.bottomAnchor.constraint(lessThanOrEqualTo: view.bottomAnchor, constant: -16.0),
//
//            containerView.leadingAnchor.constraint(equalTo: ticketSummaryStackView.leadingAnchor),
//            containerView.trailingAnchor.constraint(equalTo: ticketSummaryStackView.trailingAnchor),
//
//            // Add constraints for other views as needed
//        ])
//
//        let stackView = UIStackView()
//        stackView.axis = .vertical
//        stackView.spacing = 8
//        stackView.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(stackView)
//
//        stackView.addArrangedSubview(ticketsSummaryLabel)
//        stackView.addArrangedSubview(silverTicketLabel)
//        stackView.addArrangedSubview(goldTicketLabel)
//        stackView.addArrangedSubview(diamondTicketLabel)
//
//        let margins = view.layoutMarginsGuide
//        NSLayoutConstraint.activate([
//            stackView.topAnchor.constraint(equalTo: margins.topAnchor, constant: 16),
//            stackView.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 16),
//            stackView.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -16),
//            silverTicketLabel.heightAnchor.constraint(equalToConstant: 30),
//            goldTicketLabel.heightAnchor.constraint(equalToConstant: 30),
//            diamondTicketLabel.heightAnchor.constraint(equalToConstant: 30),
//            stackView.bottomAnchor.constraint(lessThanOrEqualTo: margins.bottomAnchor, constant: -16),
//            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16) // Adding trailing constraint
//        ])
//
//
//        // Add the containerView to the view
//        view.addSubview(containerView)
//    }
//
//    // ...
//}


class TicketSummaryView: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create a new UIStackView instance
        let stackView = UIStackView()

        // Set the axis to vertical
        stackView.axis = .horizontal

        // Create two UILabel instances
        let label1 = UILabel()
        label1.text = "First Label"
        let label2 = UILabel()
        label2.text = "Second Label"

        // Add the labels to the stack view
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)

        // Optionally customize the spacing
        stackView.spacing = 8

        // Add the stack view to your view hierarchy
        view.addSubview(stackView)
        
        // Add constraints to position the stack view
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true

    }
}
