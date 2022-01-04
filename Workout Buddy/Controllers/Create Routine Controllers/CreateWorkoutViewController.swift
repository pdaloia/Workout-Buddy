//
//  CreateWorkoutViewController.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2022-01-02.
//

import UIKit

class CreateWorkoutViewController: UIViewController {

    //MARK: - Properties
    
    let mainView: CreateWorkoutView = {
        let view = CreateWorkoutView()
        return view
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemBackground
        
        initializeView()
        
    }
    
    //MARK: - Functions
    
    func initializeView() {
        
        self.view.addSubview(self.mainView)
        mainView.translatesAutoresizingMaskIntoConstraints = false
        mainView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        mainView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        mainView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        mainView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        
    }

}
