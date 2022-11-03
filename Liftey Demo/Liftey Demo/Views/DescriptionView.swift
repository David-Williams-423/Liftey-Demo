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
        NavigationStack {
            VStack(alignment: .leading) {
                
                HStack {
                    VStack(alignment: .leading) {
                        
                        VStack(alignment: .leading) {
                            Text("Notes")
                                .font(.title).bold()
                                .navigationTitle(workout.title)
                            Text(workout.notes)
                                .font(.title2)
                        }
                        .padding()
                        
                        VStack(alignment: .leading) {
                            Text("Exercises")
                                .font(.title).bold()
                            
                            ForEach(workout.exercises, id: \.self) { exercise in
                                ExerciseInfo(exercise: workout.exercises[0])
                            }
                            .font(.title2)
                              
                        }
                        .padding()
                    }
                    
                    Spacer()
                }
                .padding()
                
                Spacer()
                
            }
            
            
        }
        
    }
}

struct DescriptionView_Previews: PreviewProvider {
    static var previews: some View {
        DescriptionView(workout: Workout(title: "Chest/tri", notes: "Great Workout!", exercises: [Exercise(description: "Chest press", reps: 4, sets: 4, weight: 80), Exercise(description: "Chest press", reps: 4, sets: 4, weight: 80), Exercise(description: "Chest press", reps: 4, sets: 4, weight: 80)]))
    }
}
