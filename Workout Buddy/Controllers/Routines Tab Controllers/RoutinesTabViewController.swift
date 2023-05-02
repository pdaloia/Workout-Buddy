//
//  RoutinesTabViewController.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2023-02-12.
//

import UIKit
import CoreData

class RoutinesTabViewController: UIViewController, RoutinesTabViewProtocol {

    //MARK: - Properties
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    private var routines = [Routine]()
    
    private var managedObjectContext: NSManagedObjectContext?
    
    //MARK: - Views
    
    private lazy var routinesTabView: RoutinesTabView = {
        let view = RoutinesTabView()
        view.routinesTabViewDelegate = self
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.managedObjectContext = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

        self.initializeView()
    }
    
    //MARK: - Functions
    
    func initializeView() {
        
        setNeedsStatusBarAppearanceUpdate()
        
        self.view.addSubview(self.routinesTabView)
        NSLayoutConstraint.activate([
            self.routinesTabView.topAnchor.constraint(equalTo: self.view.topAnchor),
            self.routinesTabView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            self.routinesTabView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.routinesTabView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
        ])
        
    }
    
    //MARK: - RoutinesTabViewProtocol Functions
    
    func save(routine name: String) {
        
        print("Saving: " + name)
        
        guard let context = self.managedObjectContext else {
            print("Failed getting the context for Core Data")
            return
        }
        
        let newRoutine = Routine(context: context)
        newRoutine.name = name
        
        do {
            try context.save()
        } catch {
            print("Failed while saving new routine")
        }
        
    }

}
