//
//  RoutinesTabViewController.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2023-02-12.
//

import UIKit

class RoutinesTabViewController: UIViewController {

    //MARK: - Properties
    
    //MARK: - Views
    
    private lazy var routinesTabView: RoutinesTabView = {
        let view = RoutinesTabView()
        return view
    }()
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        self.initializeView()
    }
    
    //MARK: - Functions
    
    func initializeView() {
        
        self.view.addSubview(self.routinesTabView)
        self.routinesTabView.translatesAutoresizingMaskIntoConstraints = false
        self.routinesTabView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.routinesTabView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        self.routinesTabView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.routinesTabView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        
    }

}
