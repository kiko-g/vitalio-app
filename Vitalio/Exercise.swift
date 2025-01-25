//
//  Exercise.swift
//  Vitalio
//
//  Created by Francisco Gonçalves on 25/01/2025.
//

import Foundation


enum ExerciseType {
    case repetitions(Int)
    case duration(Int)
}

struct Exercise: Identifiable {
    let id = UUID()
    let name: String
    let type: ExerciseType
    let sets: Int?
    let restBetweenSets: Int? // Rest time in seconds
}

let sampleExercises = [
    Exercise(name: "Push-ups", type: .repetitions(15), sets: 3, restBetweenSets: 60),
    Exercise(name: "Plank", type: .duration(60), sets: 2, restBetweenSets: 90),
    Exercise(name: "Squats", type: .repetitions(20), sets: nil, restBetweenSets: nil)
]
