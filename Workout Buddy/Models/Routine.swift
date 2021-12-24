//
//  Routine.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2021-12-24.
//

import Foundation

class Routine {
    
    var routineName: String
    var workouts: [Workout]
    
    init(routineName: String, workouts: [Workout]) {
        
        self.routineName = routineName
        self.workouts = workouts
        
    }
    
}
