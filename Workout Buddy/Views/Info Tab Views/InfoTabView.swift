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
    
    private lazy var labelStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var inputStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
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
        
        //add views to stack views
        labelStackView.addArrangedSubview(ageLabel)
        labelStackView.addArrangedSubview(heightLabel)
        labelStackView.addArrangedSubview(weightLabel)
        
        inputStackView.addArrangedSubview(ageInputField)
        inputStackView.addArrangedSubview(heightInputField)
        inputStackView.addArrangedSubview(weightInputField)
        
        //add the stack views to the view
        self.addSubview(labelStackView)
        self.addSubview(inputStackView)
        
        //set constraints for stack views
        NSLayoutConstraint.activate([
            labelStackView.topAnchor.constraint(equalTo: viewLabel.bottomAnchor),
            labelStackView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            labelStackView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor),
            labelStackView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor)
        ])
        
        NSLayoutConstraint.activate([
            inputStackView.topAnchor.constraint(equalTo: labelStackView .topAnchor),
            inputStackView.leadingAnchor.constraint(equalTo: labelStackView.trailingAnchor),
            inputStackView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            inputStackView.heightAnchor.constraint(equalTo: labelStackView.heightAnchor)
        ])
        
    }
    
}
