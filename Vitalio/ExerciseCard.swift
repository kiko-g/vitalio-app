//
//  ExerciseCard.swift
//  Vitalio
//
//  Created by Francisco Gonçalves on 25/01/2025.
//

import SwiftUI

struct ExerciseCard: View {
    let exercise: Exercise

    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack(alignment: .leading, spacing: 6) {
                Text(exercise.name)
                    .font(.title2)
                    .fontWeight(.bold)

                switch exercise.type {
                case .repetitions(let count):
                    Text("\(count) reps")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                case .duration(let seconds):
                    Text("\(seconds) sec")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }

                if let sets = exercise.sets {
                    Text("\(sets) sets")
                        .font(.subheadline)
                        .foregroundColor(.blue)
                } else {
                    Text("Single")
                        .font(.subheadline)
                        .foregroundColor(.purple)
                }
            }
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(Color(.systemGray6))
            .cornerRadius(12)
            .shadow(radius: 4)

            if let rest = exercise.restBetweenSets {
                HStack(spacing: 4) {
                    Image(systemName: "timer")
                    Text("\(rest)s")
                }
                .font(.caption)
                .foregroundColor(Color(.systemGray))
                .padding(8)
                .background(Color(.systemGray6))
                .cornerRadius(8)
                .padding([.top, .trailing], 12)
            }
        }
        .frame(height: 120)
    }
}

#Preview {
    ContentView()
}
