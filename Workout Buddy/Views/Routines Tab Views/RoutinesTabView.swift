//
//  RoutinesTabView.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2023-02-13.
//

import UIKit

class RoutinesTabView: UIView {

    //MARK: - Properties
    
    //MARK: - Views
    
    private lazy var viewLabel: UILabel = {
        let label = UILabel()
        label.text = "Routine Tab"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var newRoutineNameTextField: UIAnimatedPlaceHolderTextField = {
        let textField = UIAnimatedPlaceHolderTextField(initialPlaceholder: "Routine Name", editedPlaceholder: "Routine Name")
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private lazy var newRoutineSaveButton: UIButton = {
        let button = UIButton()
        button.setTitle("Save", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(saveButtonClicked), for: .touchUpInside)
        return button
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
        
        self.addSubview(self.viewLabel)
        NSLayoutConstraint.activate([
            viewLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            viewLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
            viewLabel.heightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.heightAnchor, multiplier: 1/10)
        ])
        
        self.addSubview(self.newRoutineNameTextField)
        NSLayoutConstraint.activate([
            newRoutineNameTextField.topAnchor.constraint(equalTo: self.viewLabel.bottomAnchor, constant: 20),
            newRoutineNameTextField.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor),
            newRoutineNameTextField.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor),
            newRoutineNameTextField.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        self.addSubview(newRoutineSaveButton)
        NSLayoutConstraint.activate([
            newRoutineSaveButton.topAnchor.constraint(equalTo: newRoutineNameTextField.bottomAnchor, constant: 20),
            newRoutineSaveButton.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor)
        ])
        
    }
    
    @objc func saveButtonClicked() {
        
        print("saving!!!")
        
    }

}
