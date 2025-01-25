//
//  ContentView.swift
//  Vitalio
//
//  Created by Francisco Gonçalves on 25/01/2025.
//

import SwiftUI

struct ContentView: View {
    let exercises = sampleExercises

    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 4) {
                    ForEach(exercises) { exercise in
                        ExerciseCard(exercise: exercise)
                            .padding(.horizontal, 16)
                    }
                }
                .padding(.vertical)
            }
            .navigationTitle("Exercises")
        }
    }
}



#Preview {
    ContentView()
}
