//
//  MainViewController.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2021-12-23.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - Properties
    
    let mainView: MainView = {
        let mainView = MainView()
        return mainView
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.delegate = self
        self.initializeView()
    }
    
    // MARK: - Functions
    
    func initializeView() {
        self.view.backgroundColor = .white
        
        self.view.addSubview(self.mainView)
        self.mainView.translatesAutoresizingMaskIntoConstraints = false
        self.mainView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.mainView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        self.mainView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.mainView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
    }

}

extension MainViewController: MainViewDelegate {
    
    func addWorkoutSetButtonPressed() {
        
        let createSetViewController = CreateSetViewController()
        self.present(createSetViewController, animated: true, completion: nil)
        
    }
    
    func createWorkoutButtonPressed() {
        
        let createWorkoutViewController = CreateWorkoutViewController()
        self.present(createWorkoutViewController, animated: true, completion: nil)
        
    }
    
}
