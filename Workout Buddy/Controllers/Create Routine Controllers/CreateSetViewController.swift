//
//  CreateSetViewController.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2021-12-31.
//

import UIKit

class CreateSetViewController: UIViewController {

    //MARK: - Properties
    let addSetView: CreateSetView = {
        let view = CreateSetView()
        return view
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializeView()
    }
    
    //MARK: - Functions
    func initializeView() {
        
        self.view.backgroundColor = .white
        
        self.view.addSubview(self.addSetView)
        self.addSetView.translatesAutoresizingMaskIntoConstraints = false
        self.addSetView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.addSetView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        self.addSetView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.addSetView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        
    }

}
