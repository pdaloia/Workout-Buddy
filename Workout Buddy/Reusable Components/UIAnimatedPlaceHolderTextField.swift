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
        label.textColor = .gray
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
    private func initializeView() {
        
        //Set the view
        self.layer.cornerRadius = 7
        self.backgroundColor = .lightGray
        
        //add the subviews
        self.addSubview(animatedLabel)
        self.addSubview(textField)
        
        //add the constraints for the empty textfield and activate them
        textFieldConstraints = [
            self.textField.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            self.textField.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 3),
            self.textField.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -3),
            self.textField.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 3/4)
        ]
        textFieldConstraints.forEach { constraint in
            constraint.isActive = true
        }
        
        //add the initial constraint for the empty label immitating the placeholder and activate them
        emptyAnimatedPlaceholderConstraints = [
            self.animatedLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            self.animatedLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 3),
            self.animatedLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -3),
            self.animatedLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 3/4)
        ]
        emptyAnimatedPlaceholderConstraints.forEach { constraint in
            constraint.isActive = true
        }
        
        //create array for constraints for the placeholder label when the text field is populated, dont activate them yet
        populatedAnimatedPlaceholderConstraints = [
            self.animatedLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 3),
            self.animatedLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -3),
            self.animatedLabel.topAnchor.constraint(equalTo: self.topAnchor),
            self.animatedLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 1/2)
        ]
        
        //add the uilabel mimicking the placeholder
        animatedLabel.text = self.initialPlaceholderText
        
        //add the textfields editing event
        textField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        
    }
    
    @objc private func textFieldDidChange(_ textField: UITextField) {
        
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
    
    private func animatePlaceholderConstraints() {
        
        //animate the constraint changes
        UIView.animate(withDuration: 0.5, delay: 0, options: .transitionCrossDissolve) {
            
            //If the text field is populated with characters, we will move the animated label/placeholder up
            if(self.isTextFieldPopulated) {
                self.emptyAnimatedPlaceholderConstraints.forEach { constraint in
                    constraint.isActive = false
                }
                self.populatedAnimatedPlaceholderConstraints.forEach { constraint in
                    constraint.isActive = true
                }
                self.setPopulatedLabelProperties()
            }
            
            //If the text field is empty, we will move the animated placeholder back to on top of the text field
            else {
                self.populatedAnimatedPlaceholderConstraints.forEach { constraint in
                    constraint.isActive = false
                }
                self.emptyAnimatedPlaceholderConstraints.forEach { constraint in
                    constraint.isActive = true
                }
                self.setEmptyLabelProperties()
            }
            
            self.layoutIfNeeded()
            
        }
        
    }
    
    private func setPopulatedLabelProperties() {
        
        animatedLabel.font = UIFont.systemFont(ofSize: 14)
        animatedLabel.textColor = .blue
        self.animatedLabel.text = self.editedPlaceholderText
        
    }
    
    private func setEmptyLabelProperties() {
        
        animatedLabel.font = UIFont.systemFont(ofSize: 18)
        animatedLabel.textColor = .gray
        self.animatedLabel.text = self.initialPlaceholderText
        
    }
    
    public func getTextFieldText() -> String {
        
        return self.textField.text ?? ""
        
    }
    
}
