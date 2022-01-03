//
//  MainView.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2021-12-23.
//

import UIKit

class MainView: UIView {

    // MARK: - Properties
    
    var delegate: MainViewDelegate?
    
    let basicLabel: UILabel = {
        let basicLabel: UILabel = UILabel()
        basicLabel.text = "Workout Buddy"
        return basicLabel
    }()
    
    let createSetButton: UIButton = {
        let view = UIButton()
        view.setTitle("Create Workout Set", for: .normal)
        view.setTitleColor(.systemBlue, for: .normal)
        view.addTarget(self, action: #selector(addWorkoutSetButtonPressed), for: .touchUpInside)
        return view
    }()
    
    let createWorkoutButton: UIButton = {
        let view = UIButton()
        view.setTitle("Create Workout", for: .normal)
        view.setTitleColor(.systemBlue, for: .normal)
        view.addTarget(self, action: #selector(createWorkoutButtonPressed), for: .touchUpInside)
        return view
    }()
    
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        initializeView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Function
    
    func initializeView() {
        
        self.addSubview(self.basicLabel)
        basicLabel.translatesAutoresizingMaskIntoConstraints = false
        basicLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        basicLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        self.addSubview(createSetButton)
        createSetButton.translatesAutoresizingMaskIntoConstraints = false
        createSetButton.topAnchor.constraint(equalTo: basicLabel.bottomAnchor).isActive = true
        createSetButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        self.addSubview(createWorkoutButton)
        createWorkoutButton.translatesAutoresizingMaskIntoConstraints = false
        createWorkoutButton.topAnchor.constraint(equalTo: createSetButton.bottomAnchor).isActive = true
        createWorkoutButton.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
    }
    
    @objc func addWorkoutSetButtonPressed() {
        
        if let delegate = delegate {
            delegate.addWorkoutSetButtonPressed()
        }
        
    }
    
    @objc func createWorkoutButtonPressed() {
        
        if let delegate = delegate {
            delegate.createWorkoutButtonPressed()
        }
        
    }

}

protocol MainViewDelegate {
    
    func addWorkoutSetButtonPressed()
    
    func createWorkoutButtonPressed()
    
}
