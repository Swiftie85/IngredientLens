//
//  ContentView.swift
//  IngredientLens
//
//  Created by Mark on 03.10.2026.
//

import SwiftUI

struct ContentView: View {
    @State private var state1 = ""
    @State private var state2 = ""
    var body: some View {
        VStack {
            Text("IngredientLens")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .padding(10)
                .background(Color.green, in: RoundedRectangle(cornerRadius: 8))
                
            Spacer()
            Button("Вставить состав") {
                state1 = "Скоро будет магия"
                
            }
            .font(.headline)
            .fontWeight(.bold)
            .padding(10)
            .foregroundStyle(Color.white)
            .background(Color.blue, in: RoundedRectangle(cornerRadius: 8))

            
            if !state1.isEmpty {
                Text(state1)
                    .font(.headline)
                    .fontWeight(.light)
                    .foregroundStyle(.gray)

            }
            
            Button("Сканировать состав") {
                state2 = "Скоро будет магия"
                
            }
            .font(.headline)
            .fontWeight(.bold)
            .padding(10)
            .foregroundStyle(Color.white)
            .background(Color.blue, in: RoundedRectangle(cornerRadius: 8))
            
            if !state2.isEmpty {
                Text(state2)
                    .font(.headline)
                    .fontWeight(.light)
                    .foregroundStyle(.gray)

            }

        }
        .padding()

    }
}

#Preview {
    ContentView()
}
