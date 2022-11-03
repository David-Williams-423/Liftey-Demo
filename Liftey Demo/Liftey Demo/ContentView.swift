//
//  ContentView.swift
//  Liftey Demo
//
//  Created by David Williams on 10/24/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = WorkoutViewModel()
    
    @State var showSheet = false
    
    var body: some View {
     
        NavigationStack {
            List(vm.workouts, id: \.id) { workout in
                
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
            .toolbar {
                ToolbarItem {
                    Button(action: {
                        showSheet.toggle()
                    }, label: {
                        Image(systemName: "plus")
                            .font(.largeTitle)
                    })
                }
            }
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
