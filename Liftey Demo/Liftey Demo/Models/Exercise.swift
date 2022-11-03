//
//  Exercise.swift
//  Liftey Demo
//
//  Created by David Williams on 10/24/22.
//

import Foundation

struct Exercise: Identifiable, Hashable {
    
    let id = UUID()
    
    var description: String
    
    var reps: Int
    var sets: Int
    var weight: Int
    
}
