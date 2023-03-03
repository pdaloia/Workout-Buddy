//
//  InfoTabView.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2023-02-13.
//

import UIKit

class InfoTabView: UIView {
    
    //MARK: - Properties
    
    //MARK: - Views
    
    private lazy var viewLabel: UILabel = {
        let label = UILabel()
        label.text = "Personal Information"
        return label
    }()
    
    private lazy var ageLabel: UILabel = {
        let label = UILabel()
        label.text = "Age:"
        return label
    }()
    
    private lazy var ageInputField: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    private lazy var heightLabel: UILabel = {
        let label = UILabel()
        label.text = "Weight:"
        return label
    }()
    
    private lazy var heightInputField: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    private lazy var weightLabel: UILabel = {
        let label = UILabel()
        label.text = "Weight:"
        return label
    }()
    
    private lazy var weightInputField: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    //MARK: - Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.initializeView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Functions
    
    func initializeView() {
        
        //add the subviews
        self.addSubview(self.viewLabel)
        self.addSubview(self.ageLabel)
        self.addSubview(self.ageInputField)
        self.addSubview(self.heightLabel)
        self.addSubview(self.heightInputField)
        self.addSubview(self.weightLabel)
        self.addSubview(self.weightInputField)
        
        //configure auto layout constraints
        viewLabel.translatesAutoresizingMaskIntoConstraints = false
        viewLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        if #available(iOS 11, *) {
            self.viewLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        } else {
            self.viewLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        }
        
        ageLabel.translatesAutoresizingMaskIntoConstraints = false
        ageLabel.topAnchor.constraint(equalTo: self.viewLabel.bottomAnchor).isActive = true
        ageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        ageLabel.trailingAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        ageInputField.topAnchor.constraint(equalTo: self.viewLabel.bottomAnchor).isActive = true
        ageInputField.leadingAnchor.constraint(equalTo: self.ageLabel.trailingAnchor).isActive = true
        ageInputField.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
    }
    
}
