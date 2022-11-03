//
//  AddWorkoutView.swift
//  Liftey Demo
//
//  Created by David Williams on 10/24/22.
//

import SwiftUI

struct AddWorkoutView: View {
    
    @ObservedObject var vm: WorkoutViewModel
        
    @Binding var showSheet: Bool
    
    @State var exercises: [Exercise]
    
    @State var title: String = ""
    @State var notes: String = ""
    
    @State var workoutTitle: String = ""
    @State var sets: String = ""
    @State var reps: String = ""
    @State var weight: String = ""
    
    var body: some View {
        VStack {
            
        }
    }
}

struct ExerciseInfo: View {
    
    var exercise: Exercise
    
    var body: some View {
        
        VStack() {
            
        }
       
    }
}

struct AddWorkoutView_Previews: PreviewProvider {
    
    @State static var exercises = [Exercise(description: "Chest press", reps: 4, sets: 4, weight: 80), Exercise(description: "Chest press", reps: 4, sets: 4, weight: 80), Exercise(description: "Chest press", reps: 4, sets: 4, weight: 80)]
    
    @State static var value = false
    
    @State static var vm = WorkoutViewModel()
    
    
    static var previews: some View {
        AddWorkoutView(vm: vm, showSheet: $value, exercises: exercises)
    }
}
