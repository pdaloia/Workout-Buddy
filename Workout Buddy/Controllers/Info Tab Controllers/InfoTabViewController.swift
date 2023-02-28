//
//  InfoTabViewController.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2023-02-12.
//

import UIKit

class InfoTabViewController: UIViewController {

    //MARK: - Properties
    
    //MARK: - Views
    
    private lazy var infoTabView: InfoTabView = {
        let view = InfoTabView()
        return view
    }()
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        self.initializeView()
    }
    
    //MARK: - Functions
    
    func initializeView() {
        
        self.view.addSubview(self.infoTabView)
        self.infoTabView.translatesAutoresizingMaskIntoConstraints = false
        self.infoTabView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.infoTabView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        self.infoTabView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.infoTabView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        
    }

}
