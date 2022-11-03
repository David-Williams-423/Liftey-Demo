//
//  WorkoutViewModel.swift
//  Liftey Demo
//
//  Created by David Williams on 11/3/22.
//

import Foundation

class WorkoutViewModel: ObservableObject {
    
    @Published var workouts: [Workout] = []
    
}
