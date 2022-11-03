//
//  CellView.swift
//  Liftey Demo
//
//  Created by David Williams on 10/24/22.
//

import SwiftUI

struct CellView: View {
    var workout: Workout
    @State var completed = false
    var body: some View {
        VStack {
            HStack {
                
                Button(action: {
                    completed.toggle()
                }, label: {
                    Image(systemName: completed ? "checkmark.circle.fill" : "circle")
                        .font(.title)
                })
                .buttonStyle(PlainButtonStyle())
                .foregroundColor(.accentColor)
                
                
                Text(workout.title)
                    .fontWeight(.bold)
                    .font(.title)
                
                Spacer()

            }
            
                ForEach(workout.exercises) { exercise in
                    HStack {
                        Text(exercise.description)
                            .bold()
                        Text(String(exercise.sets) + "x" + String(exercise.reps))
                        
                        Spacer()
                    }
                    .padding(.horizontal,65)
                    
                }
            
        }
        .padding()
        .foregroundColor(completed ? .secondary : .primary)
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(workout: Workout(title: "Chest/tri", notes: "", exercises: [Exercise(description: "Chest press", reps: 4, sets: 4, weight: 80), Exercise(description: "Chest press", reps: 4, sets: 4, weight: 80), Exercise(description: "Chest press", reps: 4, sets: 4, weight: 80)]))
    }
}
