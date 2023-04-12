//
//  TicketSummaryVIew.swift
//  esewaEvents
//
//  Created by Sabir's MacBook on 4/12/23.
//
import UIKit

class TicketSummaryView: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create UILabel instances
        let ticketsSummaryLabel = UILabel()
            ticketsSummaryLabel.text = "Tickets Summary (3)"
            ticketsSummaryLabel.textColor = .black
            ticketsSummaryLabel.font = UIFont.systemFont(ofSize: 16, weight: .heavy)
            ticketsSummaryLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let silverTicketLabel = UILabel()
            silverTicketLabel.text = "Silver Ticket X 1"
            silverTicketLabel.textColor = .black
            silverTicketLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
            silverTicketLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let silverTicketPriceLabel = UILabel()
            silverTicketPriceLabel.text = "NPR. 999"
            silverTicketPriceLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
            silverTicketPriceLabel.textColor = UIColor.gray
            silverTicketPriceLabel.translatesAutoresizingMaskIntoConstraints = false
                
        let goldTicketLabel = UILabel()
            goldTicketLabel.text = "Gold Ticket X 1"
            goldTicketLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
            goldTicketLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let goldTicketPriceLabel = UILabel()
            goldTicketPriceLabel.text = "NPR. 4999"
            goldTicketPriceLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
            goldTicketPriceLabel.textColor = UIColor.gray
            goldTicketPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let diamondTicketLabel = UILabel()
            diamondTicketLabel.text = "Diamond Ticket X 1"
            diamondTicketLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
            diamondTicketLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let diamondTicketPriceLabel = UILabel()
            diamondTicketPriceLabel.text = "NPR. 8999"
            diamondTicketPriceLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
            diamondTicketPriceLabel.textColor = UIColor.gray
            diamondTicketPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let subtotalLabel = UILabel()
            subtotalLabel.text = "Sub Total"
            subtotalLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
            subtotalLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let subtotalPriceLabel = UILabel()
            subtotalPriceLabel.text = "NPR. 14978"
            subtotalPriceLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
            subtotalPriceLabel.textColor = UIColor.gray
            subtotalPriceLabel.translatesAutoresizingMaskIntoConstraints = false
    
        let cashbackLabel = UILabel()
            cashbackLabel.text = "Cashback"
            cashbackLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
            cashbackLabel.textColor = UIColor.green
            cashbackLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let cashbackPriceLabel = UILabel()
            cashbackPriceLabel.text = "NPR. 100"
            cashbackPriceLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
            cashbackPriceLabel.textColor = UIColor.gray
            cashbackPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let grandTotalLabel = UILabel()
            grandTotalLabel.text = "Grand Total"
            grandTotalLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
            grandTotalLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let grandTotalPriceLabel = UILabel()
            grandTotalPriceLabel.text = "NPR. 14878"
            grandTotalPriceLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
            grandTotalPriceLabel.textColor = UIColor.black
            grandTotalPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Create a new container view
        let containerView = UIView()
        containerView.backgroundColor = .white
        containerView.layer.cornerRadius = 20
        containerView.translatesAutoresizingMaskIntoConstraints = false
        // Add the container view to the view hierarchy
        view.addSubview(containerView)
        
        let innerHstackView1 = UIStackView()
        innerHstackView1.translatesAutoresizingMaskIntoConstraints = false
        innerHstackView1.axis = .horizontal
       
        let innerHstackView2 = UIStackView()
        innerHstackView2.translatesAutoresizingMaskIntoConstraints = false
        innerHstackView2.axis = .horizontal
        innerHstackView2.spacing = 140
        
        let innerHstackView3 = UIStackView()
        innerHstackView3.translatesAutoresizingMaskIntoConstraints = false
        innerHstackView3.axis = .horizontal
        innerHstackView3.spacing = 145
        
        let innerHstackView4 = UIStackView()
        innerHstackView4.translatesAutoresizingMaskIntoConstraints = false
        innerHstackView4.axis = .horizontal
        innerHstackView4.spacing = 116
        
        let innerHstackView5 = UIStackView()
        innerHstackView5.translatesAutoresizingMaskIntoConstraints = false
        innerHstackView5.axis = .horizontal
        innerHstackView5.spacing = 182
        
        
        let innerHstackView6 = UIStackView()
        innerHstackView6.translatesAutoresizingMaskIntoConstraints = false
        innerHstackView6.axis = .horizontal
        innerHstackView6.spacing = 178
        
        let innerHstackView7 = UIStackView()
        innerHstackView7.translatesAutoresizingMaskIntoConstraints = false
        innerHstackView7.axis = .horizontal
        innerHstackView7.spacing = 166
        
        // stack
        innerHstackView1.addArrangedSubview(ticketsSummaryLabel)
        
        innerHstackView2.addArrangedSubview(silverTicketLabel)
        innerHstackView2.addArrangedSubview(silverTicketPriceLabel)
        
        innerHstackView3.addArrangedSubview(goldTicketLabel)
        innerHstackView3.addArrangedSubview(goldTicketPriceLabel)
        
        innerHstackView4.addArrangedSubview(diamondTicketLabel)
        innerHstackView4.addArrangedSubview(diamondTicketPriceLabel)
        
        innerHstackView5.addArrangedSubview(subtotalLabel)
        innerHstackView5.addArrangedSubview(subtotalPriceLabel)
        
        innerHstackView6.addArrangedSubview(cashbackLabel)
        innerHstackView6.addArrangedSubview(cashbackPriceLabel)
        
        innerHstackView7.addArrangedSubview(grandTotalLabel)
        innerHstackView7.addArrangedSubview(grandTotalPriceLabel)
        
        // Add the stack view to the container view
        containerView.addSubview(innerHstackView1)
        containerView.addSubview(innerHstackView2)
        containerView.addSubview(innerHstackView3)
        containerView.addSubview(innerHstackView4)
        containerView.addSubview(innerHstackView5)
        containerView.addSubview(innerHstackView6)
        containerView.addSubview(innerHstackView7)
        
        
        // Add constraints to position the container view
        NSLayoutConstraint.activate([
            
            containerView.widthAnchor.constraint(equalToConstant: 370),
            containerView.heightAnchor.constraint(equalToConstant: 230),
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            innerHstackView1.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),
            innerHstackView1.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20),
            
            innerHstackView2.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 50),
            innerHstackView2.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20),
            
            innerHstackView3.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 80),
            innerHstackView3.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20),
            
            innerHstackView4.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 110),
            innerHstackView4.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20),
            
            innerHstackView5.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 140),
            innerHstackView5.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20),
            
            innerHstackView6.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 170),
            innerHstackView6.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20),
            
            innerHstackView7.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 200),
            innerHstackView7.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20)
        ])
    }
}
