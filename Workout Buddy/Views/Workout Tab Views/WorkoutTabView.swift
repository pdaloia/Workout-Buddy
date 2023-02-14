//
//  WorkoutTabView.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2023-02-13.
//

import UIKit

class WorkoutTabView: UIView {

    //MARK: - Properties
    
    //MARK: - Views
    
    private lazy var viewLabel: UILabel = {
        let label = UILabel()
        label.text = "Workout Tab"
        return label
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
        viewLabel.translatesAutoresizingMaskIntoConstraints = false
        viewLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        viewLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        
    }

}
