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
    
    var addExerciseEnabled: Bool {
        workoutTitle != "" && sets != "" && reps != "" && weight != ""
    }
    
    var addWorkoutEnabled: Bool {
        title != "" && !exercises.isEmpty
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
                List {
                    
                    TextField("Enter title", text: $title)
                    TextField("Notes", text: $notes)
                    
                    Section {
                        
                        TextField("Workout", text: $workoutTitle)
                            
                        TextField("Sets", text: $sets)
                            .keyboardType(.decimalPad)
                        TextField("Reps", text: $reps)
                            .keyboardType(.decimalPad)
                        TextField("Weight", text: $weight)
                            .keyboardType(.decimalPad)
                        
                    }
                    
                    Section {
                        Button(action: {
                            
                            exercises.append(Exercise(description: workoutTitle, reps: Int(reps) ?? 0, sets: Int(sets) ?? 0, weight: Int(weight) ?? 0))
                        
                            workoutTitle = ""
                            sets = ""
                            reps = ""
                            weight = ""
                                
                            
                        }, label: {
                            Text("Add Exercise")
                        })
                        .disabled(!addExerciseEnabled)
                    }
                    
                    Section {
                        ForEach(exercises, id: \.self) { exercise in
                            ExerciseInfo(exercise: exercise)
                        }
                        
                    }
                    
                    
                    
                }
                .listStyle(.insetGrouped)
                
                .navigationBarTitle(Text("Add Workout"), displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            showSheet = false
                        } label: {
                            Text("Cancel").bold()
                        }
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            
                            vm.workouts.append(Workout(title: title, notes: notes, exercises: exercises))
                            
                            showSheet = false
                        }, label: {
                            Text("Add").bold()
                        })
                        .disabled(!addWorkoutEnabled)
                        
                    }
                }
            }
        }
    }
}

struct ExerciseInfo: View {
    
    var exercise: Exercise
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(exercise.description)
            Text("Sets: " + String(exercise.sets))
                .padding(.leading)
            Text("Reps: " + String(exercise.reps))
                .padding(.leading)
            Text("Weight: " + String(exercise.weight) + "lbs")
                .padding(.leading)
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
