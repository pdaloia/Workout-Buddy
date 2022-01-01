//
//  CreateSetView.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2021-12-31.
//

import UIKit

class CreateSetView: UIView {
    
    let weightInput: UITextField = {
        let view = UITextField()
        view.placeholder = "Weight"
        return view
    }()
    
    let weightInputLabel: UILabel = {
        let view = UILabel()
        view.text = "Enter Weight (lbs)"
        return view
    }()
    
    let repsInput: UITextField = {
        let view = UITextField()
        view.placeholder = "Reps"
        return view
    }()
    
    let repsInputLabel: UILabel = {
        let view = UILabel()
        view.text = "Enter Reps"
        return view
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureViewComponents()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureViewComponents() {
        
        self.addSubview(weightInputLabel)
        weightInputLabel.translatesAutoresizingMaskIntoConstraints = false
        weightInputLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        weightInputLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        weightInputLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20).isActive = true
        
        self.addSubview(weightInput)
        weightInput.translatesAutoresizingMaskIntoConstraints = false
        weightInput.topAnchor.constraint(equalTo:weightInputLabel.bottomAnchor).isActive = true
        weightInput.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        weightInput.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20).isActive = true
        
        self.addSubview(repsInputLabel)
        repsInputLabel.translatesAutoresizingMaskIntoConstraints = false
        repsInputLabel.topAnchor.constraint(equalTo: self.weightInput.bottomAnchor, constant: 20).isActive = true
        repsInputLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        repsInputLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20).isActive = true
        
        self.addSubview(repsInput)
        repsInput.translatesAutoresizingMaskIntoConstraints = false
        repsInput.topAnchor.constraint(equalTo:repsInputLabel.bottomAnchor).isActive = true
        repsInput.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        repsInput.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20).isActive = true
        
        
    }
    
}
