//
//  Workout.swift
//  Workout Buddy
//
//  Created by Philip D'Aloia on 2021-12-24.
//

import Foundation

class Workout {
    
    var workoutName: String
    var sets: [WorkoutSet]
    
    init(workoutName: String, sets: [WorkoutSet]) {
        
        self.workoutName = workoutName
        self.sets = sets
        
    }
    
}
