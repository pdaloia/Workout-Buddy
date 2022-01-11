//
//  CreateRoutineView.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2022-01-03.
//

import UIKit

class CreateRoutineView: UIView {

    //MARK: - Properties
    
    let routineNameInputLabel: UILabel = {
        let view = UILabel()
        view.text = "Enter the name of the routine"
        return view
    }()
    
    let routineNameInput: UITextField = {
        let view = UITextField()
        view.placeholder = "Routine name"
        return view
    }()
    
    let routineWorkoutsInputLabel: UILabel = {
        let view = UILabel()
        view.text = "Select the workouts for this routine"
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
        
        //add the subviews
        self.addSubview(routineNameInputLabel)
        self.addSubview(routineNameInput)
        self.addSubview(routineWorkoutsInputLabel)
        
        //set the contraints
        routineNameInputLabel.translatesAutoresizingMaskIntoConstraints = false
        routineNameInputLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        routineNameInputLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        routineNameInputLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20).isActive = true
        
        routineNameInput.translatesAutoresizingMaskIntoConstraints = false
        routineNameInput.topAnchor.constraint(equalTo: routineNameInputLabel.bottomAnchor ).isActive = true
        routineNameInput.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        routineNameInput.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20).isActive = true
        
        routineWorkoutsInputLabel.translatesAutoresizingMaskIntoConstraints = false
        routineWorkoutsInputLabel.topAnchor.constraint(equalTo: routineNameInput.bottomAnchor, constant: 20).isActive = true
        routineWorkoutsInputLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20).isActive = true
        routineWorkoutsInputLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 20).isActive = true
        
    }

}
