//
//  InfoTabView.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2023-02-13.
//

import UIKit

class InfoTabView: UIView {
    
    //MARK: - Properties
    
    //MARK: - Views
    
    private lazy var viewLabel: UILabel = {
        let label = UILabel()
        label.text = "Personal Information"
        return label
    }()
    
    private lazy var ageLabel: UILabel = {
        let label = UILabel()
        label.text = "Age:"
        return label
    }()
    
    private lazy var ageInputField: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    private lazy var weightLabel: UILabel = {
        let label = UILabel()
        label.text = "Weight:"
        return label
    }()
    
    private lazy var weightInputField: UITextField = {
        let textField = UITextField()
        return textField
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
        
        if #available(iOS 11, *) {
            self.viewLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor).isActive = true
        } else {
            self.viewLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        }
        
    }
    
}
