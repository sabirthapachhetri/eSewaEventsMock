//
//  BottomSheetViewController.swift
//  esewaEvents
//
//  Created by Sabir's MacBook on 4/25/23.
//

import UIKit

class BottomSheetViewController: UIViewController {
    
//     var onDeleteClicked: (()->())?
        
    private let bottomSheetView:UIView = {
        let sheetView = UIView ()
        sheetView.translatesAutoresizingMaskIntoConstraints = false
        sheetView.layer.cornerRadius = 16
        return sheetView
    }()
    
    private let titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Attend Event"
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textAlignment = .center
        titleLabel.font = .systemFont(ofSize: 16, weight: .bold)
        titleLabel.textColor = .black
        return titleLabel
    }()
    
    private let subTitleLabel: UILabel = {
        let subTitleLabel = UILabel()
        subTitleLabel.text = "Are you sure you want to attend this event?"
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subTitleLabel.textAlignment = .center
        subTitleLabel.font = .systemFont(ofSize: 14, weight: .bold)
        subTitleLabel.textColor = .gray
        return subTitleLabel
    }()
    
    private let cancelButton: UIButton = {
        let cancelbtn = UIButton()
        cancelbtn.translatesAutoresizingMaskIntoConstraints = false
        
        cancelbtn.setTitle("CANCEL", for: .normal)
        cancelbtn.setTitleColor(.white, for: .normal)
        cancelbtn.backgroundColor = .darkGray
        cancelbtn.layer.cornerRadius = 14
        cancelbtn.clipsToBounds = true
        return cancelbtn
    
    }()
    // add cancel icon
    private let cancelImage: UIImageView = {
        let cancelImg = UIImageView()
        cancelImg.image = UIImage(systemName: "xmark")
        cancelImg.tintColor = .black
        cancelImg.translatesAutoresizingMaskIntoConstraints = false
        cancelImg.isUserInteractionEnabled = true
        return cancelImg
    }()
    
    
    private let confirmButton: UIButton = {
        let confirmbtn = UIButton()
        confirmbtn.setTitle("Confirm", for: .normal)
        confirmbtn.translatesAutoresizingMaskIntoConstraints = false
        confirmbtn.setTitleColor(.white, for: .normal)
        confirmbtn.backgroundColor = UIColor(red: 48/255, green: 219/255, blue: 65/255, alpha: 1.0)
        confirmbtn.layer.cornerRadius = 14
        confirmbtn.clipsToBounds = true
        return confirmbtn
        
    }()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupConstraints()
    
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleCancelImageTap))
        cancelImage.addGestureRecognizer(tapGesture)
        cancelButton.addTarget(self, action: #selector(dismissVc), for: .touchUpInside)
    }
    
    func setupView() {
        view.backgroundColor = .clear
        
    }
    
    @objc func handleCancelImageTap(_ sender: UITapGestureRecognizer) {
        self.dismiss(animated: true, completion: nil)

        
    }
    @objc func dismissVc() {
        self.dismiss(animated: true)
    }
    
    func setupConstraints() {
        view.addSubview(bottomSheetView)
        bottomSheetView.backgroundColor = .white
        bottomSheetView.addSubview(titleLabel)
        bottomSheetView.addSubview(subTitleLabel)
        bottomSheetView.addSubview(cancelButton)
        bottomSheetView.addSubview(confirmButton)
        bottomSheetView.addSubview(cancelImage)
        
        
        NSLayoutConstraint.activate([
            
            bottomSheetView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomSheetView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomSheetView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            bottomSheetView.heightAnchor.constraint(equalToConstant: 200),
            
            titleLabel.topAnchor.constraint(equalTo: bottomSheetView.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: bottomSheetView.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: bottomSheetView.trailingAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 100),
            
            subTitleLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor),
            subTitleLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor),
            subTitleLabel.heightAnchor.constraint(equalToConstant: 140),
            
            cancelButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            cancelButton.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: 20),
            cancelButton.widthAnchor.constraint(equalToConstant: 140),
            cancelButton.heightAnchor.constraint(equalToConstant: 50),
            
            confirmButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor),
            confirmButton.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: -20),
            confirmButton.widthAnchor.constraint(equalToConstant: 140),
            confirmButton.heightAnchor.constraint(equalToConstant: 50),
            
            cancelImage.topAnchor.constraint(equalTo: bottomSheetView.topAnchor, constant: 10),
            cancelImage.trailingAnchor.constraint(equalTo: bottomSheetView.trailingAnchor, constant: -10),
            cancelImage.heightAnchor.constraint(equalToConstant: 24),
            cancelImage.widthAnchor.constraint(equalToConstant: 24)
            
        ])
    }
}
