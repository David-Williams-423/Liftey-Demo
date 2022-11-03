//
//  ContentView.swift
//  Liftey Demo
//
//  Created by David Williams on 10/24/22.
//

import SwiftUI

struct ContentView: View {
    
    var examples = Workout.example
    
    @StateObject var vm = WorkoutViewModel()
    
    @State var showSheet = false
    
    var body: some View {
     
        NavigationStack {
            //TODO: change examples to use the view model instead
            List(examples, id: \.id) { workout in
                
                NavigationLink {
                    DescriptionView(workout: workout)
                } label: {
                    CellView(workout: workout)
                }
            }
            .listStyle(.inset)
            .sheet(isPresented: $showSheet) {
                AddWorkoutView(vm: vm, showSheet: $showSheet, exercises: [])
            }
            
            .navigationTitle("Workouts")
            
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
