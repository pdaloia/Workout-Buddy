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
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var ageInputField: UIAnimatedPlaceHolderTextField = {
        let textField = UIAnimatedPlaceHolderTextField(initialPlaceholder: "Enter your age", editedPlaceholder: "Age")
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var heightInputField: UIAnimatedPlaceHolderTextField = {
        let textField = UIAnimatedPlaceHolderTextField(initialPlaceholder: "Enter your height", editedPlaceholder: "Height" )
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var weightInputField: UIAnimatedPlaceHolderTextField = {
        let textField = UIAnimatedPlaceHolderTextField(initialPlaceholder: "Enter your weight", editedPlaceholder: "Weight")
        textField.translatesAutoresizingMaskIntoConstraints = false
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
        
        //add and initalize view's label
        self.addSubview(viewLabel)
        NSLayoutConstraint.activate([
            viewLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            viewLabel.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            viewLabel.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            viewLabel.heightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.heightAnchor, multiplier: 1/10)
        ])
        
        //add the input views and create + activate their constraints
        self.addSubview(ageInputField)
        self.addSubview(heightInputField)
        self.addSubview(weightInputField)
        
        NSLayoutConstraint.activate([
            self.ageInputField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.ageInputField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.ageInputField.topAnchor.constraint(equalTo: self.viewLabel.bottomAnchor, constant: 20),
            self.ageInputField.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            self.heightInputField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.heightInputField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.heightInputField.topAnchor.constraint(equalTo: self.ageInputField.bottomAnchor, constant: 20),
            self.heightInputField.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            self.weightInputField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            self.weightInputField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            self.weightInputField.topAnchor.constraint(equalTo: self.heightInputField.bottomAnchor, constant: 20),
            self.weightInputField.heightAnchor.constraint(equalToConstant: 50)
        ])
        
    }
    
}
