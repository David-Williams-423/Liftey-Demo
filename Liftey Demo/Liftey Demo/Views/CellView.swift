//
//  CellView.swift
//  Liftey Demo
//
//  Created by David Williams on 10/24/22.
//

import SwiftUI

struct CellView: View {
    var workout: Workout

    var body: some View {
        VStack{
            
        }
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(workout: Workout(title: "Chest/tri", notes: "", exercises: [Exercise(description: "Chest press", reps: 4, sets: 4, weight: 80), Exercise(description: "Chest press", reps: 4, sets: 4, weight: 80), Exercise(description: "Chest press", reps: 4, sets: 4, weight: 80)]))
    }
}
