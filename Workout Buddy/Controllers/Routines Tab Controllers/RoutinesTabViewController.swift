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
    
    private lazy var persistentContainer: NSPersistentContainer = {
        NSPersistentContainer(name: "WorkoutBuddyDataModel")
    }()
    
    var managedObjectContext: NSManagedObjectContext?
    
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
        
        self.managedObjectContext = persistentContainer.viewContext
        retrieveRoutines()

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
    
    func retrieveRoutines() {
        
        persistentContainer.loadPersistentStores { [weak self] persistentStoreDescription, error in
            
            if let error = error {
                print("Unable to retrieve Routines from persistent store")
                print(error)

            } else {
                //retrieve Rotuines
                let fetchRequest: NSFetchRequest<Routine> = Routine.fetchRequest()
                
                self?.persistentContainer.viewContext.perform {
                    do {
                        let result = try fetchRequest.execute()
                        
                        for routine in result {
                            print(routine.name ?? "")
                        }
                    } catch {
                        print("Unable to retrieve routines while executing fetch request.")
                        print(error)
                    }
                }
            }
            
        }
        
    }
    
    //MARK: - RoutinesTabViewProtocol Functions
    
    func save(routine name: String) {
        
        print("Saving: " + name)
        
        guard let managedObjectContext = managedObjectContext else {
            fatalError("No Managed Object Context Available")
        }
        
        let newRoutine = Routine(context: managedObjectContext)
        newRoutine.name = name
        
        do {
            try managedObjectContext.save()
        } catch {
            print("Failed while saving new routine")
        }
        
    }

}
