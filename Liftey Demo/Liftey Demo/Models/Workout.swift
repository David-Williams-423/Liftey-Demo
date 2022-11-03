//
//  Workout.swift
//  Liftey Demo
//
//  Created by David Williams on 10/24/22.
//

import Foundation

struct Workout: Identifiable {
    
    let id = UUID()
    
    var title: String
    var notes: String
    
    var exercises: [Exercise]
    
}

extension Workout {
    
    var example: Workout {
        Workout(title: "Chest/tri", notes: "", exercises: [Exercise(description: "Chest press", reps: 4, sets: 4, weight: 80), Exercise(description: "Chest press", reps: 4, sets: 4, weight: 80), Exercise(description: "Chest press", reps: 4, sets: 4, weight: 80)])
    }
    
}
