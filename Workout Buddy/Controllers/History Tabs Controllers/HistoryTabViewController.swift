//
//  HistoryTabViewController.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2023-02-12.
//

import UIKit

class HistoryTabViewController: UIViewController {
    
    //MARK: - Properties
    
    //MARK: - Views
    
    private lazy var historyTabView: HistoryTabView = {
        let view = HistoryTabView()
        return view
    }()
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        self.initializeView()
    }
    
    //MARK: - Functions
    
    func initializeView() {
        
        self.view.addSubview(self.historyTabView)
        self.historyTabView.translatesAutoresizingMaskIntoConstraints = false
        self.historyTabView.topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        self.historyTabView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        self.historyTabView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
        self.historyTabView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        
    }

}
