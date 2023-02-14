//
//  WorkoutTabViewController.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2023-02-12.
//

import UIKit

class WorkoutTabViewController: UIViewController {

    //MARK: - Properties
    
    //MARK: - Views
    
    private lazy var workoutTabView: WorkoutTabView = {
        let view = WorkoutTabView()
        return view
    }()
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        self.initializeView()
    }
    
    //MARK: - Functions
    
    func initializeView() {
        
        self.view.addSubview(self.workoutTabView)
        self.workoutTabView.translatesAutoresizingMaskIntoConstraints = false
        self.workoutTabView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.workoutTabView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        self.workoutTabView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.workoutTabView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        
    }

}
