//
//  UITextField+AnimatedPlaceholder.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2023-03-06.
//

import UIKit

class UIAnimatedPlaceHolderTextField: UIView {
    
    //MARK: Properties
    
    private var isTextFieldPopulated: Bool = false
    
    private var textFieldConstraints: [NSLayoutConstraint] = []
    
    private var emptyAnimatedPlaceholderConstraints: [NSLayoutConstraint] = []
    private var populatedAnimatedPlaceholderConstraints: [NSLayoutConstraint] = []
    
    private var initialPlaceholderText = ""
    private var editedPlaceholderText = ""
    
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
    
    //MARK: Lifecycle
    
    init(initialPlaceholder: String, editedPlaceholder: String) {
        
        super.init(frame: .zero)
        
        self.initialPlaceholderText = initialPlaceholder
        self.editedPlaceholderText = editedPlaceholder
        
        initializeView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Functions
    func initializeView() {
        
        //add the subviews
        self.addSubview(animatedLabel)
        self.addSubview(textField)
        
        //add the constraints for the empty textfield and activate them
        textFieldConstraints = [
            self.textField.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            self.textField.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.textField.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.textField.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 3/4)
        ]
        textFieldConstraints.forEach { constraint in
            constraint.isActive = true
        }
        
        //add the initial constraint for the empty label immitating the placeholder and activate them
        emptyAnimatedPlaceholderConstraints = [
            self.animatedLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            self.animatedLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.animatedLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.animatedLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 3/4)
        ]
        emptyAnimatedPlaceholderConstraints.forEach { constraint in
            constraint.isActive = true
        }
        
        //create array for constraints for the placeholder label when the text field is populated, dont activate them yet
        populatedAnimatedPlaceholderConstraints = [
            self.animatedLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.animatedLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.animatedLabel.bottomAnchor.constraint(equalTo: self.textField.topAnchor),
            self.animatedLabel.topAnchor.constraint(equalTo: self.topAnchor)
        ]
        
        //add the uilabel mimicking the placeholder
        animatedLabel.text = self.initialPlaceholderText
        
        //add the textfields editing event
        textField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        
        guard let text = textField.text else {
            return
        }
        
        if(text.isEmpty && self.isTextFieldPopulated) {
            self.isTextFieldPopulated = false
            animatePlaceholderConstraints()
        }
        else if (!text.isEmpty && !self.isTextFieldPopulated) {
            self.isTextFieldPopulated = true
            animatePlaceholderConstraints()
        }
        
    }
    
    func animatePlaceholderConstraints() {
        
        //animate the constraint changes
        UIView.animate(withDuration: 0.5, delay: 0, options: .transitionCrossDissolve) {
            
            if(self.isTextFieldPopulated) {
                self.emptyAnimatedPlaceholderConstraints.forEach { constraint in
                    constraint.isActive = false
                }
                self.populatedAnimatedPlaceholderConstraints.forEach { constraint in
                    constraint.isActive = true
                }
                self.animatedLabel.text = self.editedPlaceholderText
            }
            else {
                self.populatedAnimatedPlaceholderConstraints.forEach { constraint in
                    constraint.isActive = false
                }
                self.emptyAnimatedPlaceholderConstraints.forEach { constraint in
                    constraint.isActive = true
                }
                self.animatedLabel.text = self.initialPlaceholderText
            }
            
            self.layoutIfNeeded()
            
        }
        
    }
    
}
