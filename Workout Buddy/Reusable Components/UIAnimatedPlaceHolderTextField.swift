//
//  UITextField+AnimatedPlaceholder.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2023-03-06.
//

import UIKit

class UIAnimatedPlaceHolderTextField: UIView {
    
    //MARK: Properties
    
    private lazy var animatedLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var placeholderView: UIView = {
        let placeholderView = UIView()
        placeholderView.translatesAutoresizingMaskIntoConstraints = false
        return placeholderView
    }()
    
    //MARK: Lifecycle
    
    init(initialPlaceholder: String, editedPlaceholder: String) {
        
        super.init(frame: .zero)
        initializeView(initialPlaceholder: initialPlaceholder)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Functions
    func initializeView(initialPlaceholder: String) {
        
        //add the subviews
        self.addSubview(animatedLabel)
        self.addSubview(textField)
        
        //set the constraints on the text field view
        NSLayoutConstraint.activate([
            textField.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            textField.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            textField.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            textField.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 4/5)
        ])
        
        //set the constraints on the animated label
        NSLayoutConstraint.activate([
            animatedLabel.topAnchor.constraint(equalTo: textField.topAnchor),
            animatedLabel.bottomAnchor.constraint(equalTo: textField.bottomAnchor),
            animatedLabel.leadingAnchor.constraint(equalTo: textField.leadingAnchor),
            animatedLabel.trailingAnchor.constraint(equalTo: textField.trailingAnchor)
        ])
        
        //add the uilabel mimicking the placeholder
        animatedLabel.text = initialPlaceholder
        
        //add the textfields editing event
        textField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        
        print("editing lol")
        
    }
    
}
