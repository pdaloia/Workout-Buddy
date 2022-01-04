//
//  CreateWorkoutView.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2022-01-02.
//

import UIKit

class CreateWorkoutView: UIView {
    
    //MARK: - Properties
    
    let workoutNameInputLabel: UILabel = {
        let view = UILabel()
        view.text = "Enter workout name"
        return view
    }()
    
    let workoutNameInput: UITextField = {
        let view = UITextField()
        view.placeholder = "Workout Name"
        return view
    }()
    
    let workoutSetsInputLabel: UILabel = {
        let view = UILabel()
        view.text = "Add the sets for this workout"
        return view
    }()
    
    //MARK: - Lifecycle

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initializeView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Functions
    
    func initializeView() {
        
        //add the views
        self.addSubview(workoutNameInputLabel)
        self.addSubview(workoutNameInput)
        self.addSubview(workoutSetsInputLabel)
        
        //set the constraints
        workoutNameInputLabel.translatesAutoresizingMaskIntoConstraints = false
        workoutNameInputLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        workoutNameInputLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        workoutNameInputLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20).isActive = true
        
        workoutNameInput.translatesAutoresizingMaskIntoConstraints = false
        workoutNameInput.topAnchor.constraint(equalTo: workoutNameInputLabel.bottomAnchor ).isActive = true
        workoutNameInput.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        workoutNameInput.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20).isActive = true
        
        workoutSetsInputLabel.translatesAutoresizingMaskIntoConstraints = false
        workoutSetsInputLabel.topAnchor.constraint(equalTo: workoutNameInput.bottomAnchor, constant: 20).isActive = true
        workoutSetsInputLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        workoutSetsInputLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20).isActive = true
        
    }

}
