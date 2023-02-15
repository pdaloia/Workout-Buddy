//
//  MainViewController.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2021-12-23.
//

import UIKit

class MainViewController: UITabBarController {

    // MARK: - Properties
    
    //MARK: - Views
    
    private lazy var infoTabViewController: InfoTabViewController = {
        let tabController = InfoTabViewController()
        return tabController
    }()
    
    private lazy var routinesTabViewController: RoutinesTabViewController = {
        let tabController = RoutinesTabViewController()
        return tabController
    }()
    
    private lazy var workoutTabViewController: WorkoutTabViewController = {
        let tabController = WorkoutTabViewController()
        return tabController
    }()
    
    private lazy var historyTabViewController: HistoryTabViewController = {
        let tabController = HistoryTabViewController()
        return tabController
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        
        //call super
        super.viewDidLoad()
        
        //call initialization methods
        self.initializeView()
        self.initializeTabBar()
        
    }
    
    // MARK: - Functions
    
    func initializeView() {
        
        self.view.backgroundColor = .white
        
    }
    
    func initializeTabBar() {
        
        //create the array of controllers that will be used for the tab bar items
        let controllers = [infoTabViewController, routinesTabViewController, workoutTabViewController, historyTabViewController]
        
        //create the tab bar items which we will link to the appropriate view controller
        let infoTabBarItem = UITabBarItem(title: "Info", image: UIImage(systemName: "info.circle"), tag: 0)
        let routinesTabBarItem = UITabBarItem(title: "Routines", image: UIImage(systemName: "list.bullet.rectangle.portrait"), tag: 1)
        let workoutTabBarItem = UITabBarItem(title: "Workout", image: UIImage(systemName: "heart"), tag: 2)
        let historyTabBarItem = UITabBarItem(title: "History", image: UIImage(systemName: "calendar"), tag: 3)
        
        //set the tab bar iteam for each view controller
        infoTabViewController.tabBarItem = infoTabBarItem
        routinesTabViewController.tabBarItem = routinesTabBarItem
        workoutTabViewController.tabBarItem = workoutTabBarItem
        historyTabViewController.tabBarItem = historyTabBarItem
        
        //assign this tab controller's controllers
        self.viewControllers = controllers
        
    }

}
