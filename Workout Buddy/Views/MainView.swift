//
//  MainView.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2021-12-23.
//

import UIKit

class MainView: UIView {

    // MARK: - Properties
    
    let basicLabel: UILabel = {
        let basicLabel: UILabel = UILabel()
        basicLabel.text = "Workout Buddy"
        return basicLabel
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
    }

}
