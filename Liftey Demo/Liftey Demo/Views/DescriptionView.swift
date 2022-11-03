//
//  DescriptionView.swift
//  Liftey Demo
//
//  Created by David Williams on 10/24/22.
//

import SwiftUI

struct DescriptionView: View {
    
    var workout: Workout
    
    var body: some View {

        VStack {
            
        }
        
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(workout: Workout(title: "Chest/tri", notes: "Great Workout!", exercises: [Exercise(description: "Chest press", reps: 4, sets: 4, weight: 80), Exercise(description: "Chest press", reps: 4, sets: 4, weight: 80), Exercise(description: "Chest press", reps: 4, sets: 4, weight: 80)]))
    }
}
