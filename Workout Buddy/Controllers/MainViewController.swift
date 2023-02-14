//
//  MainViewController.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2021-12-23.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: - Properties
    
    //MARK: - Views
    
    let mainView: MainView = {
        let mainView = MainView()
        return mainView
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initializeView()
    }
    
    // MARK: - Functions
    
    func initializeView() {
        
        self.view.backgroundColor = .white
        
    }

}
