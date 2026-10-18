//
//  ContentView.swift
//  IngredientLens
//
//  Created by Mark on 03.10.2026.
//

import SwiftUI

struct ContentView: View {
    @State private var isInputVisible = false
    @State private var ingredientsText = ""
    @State private var analysisResult = ""
    private var trimmedIngredientsText: String {
        ingredientsText.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    var body: some View {
        VStack {
            Text("IngredientLens")
                .foregroundStyle(.green)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(10)

            Spacer()
            
            if isInputVisible {
                TextEditor(text: $ingredientsText)
                    .scrollContentBackground(.hidden)
                    .frame(height: 150)
                    .background(Color.white, in: RoundedRectangle(cornerRadius: 8))
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.green, lineWidth: 1)
                    }
                Button("Анализ состава") {
                    analysisResult = trimmedIngredientsText
                }
                .disabled(trimmedIngredientsText.isEmpty)
                if !analysisResult.isEmpty {
                    Text(analysisResult)
                        .font(.headline)
                        .fontWeight(.light)
                        .foregroundStyle(.gray)
                }


            }
            
            Button("Вставить состав") {
                isInputVisible.toggle()
                
            }
            .font(.headline)
            .fontWeight(.bold)
            .frame(width: 180)
            .padding(10)
            .foregroundStyle(Color.white)
            .background(Color.blue, in: RoundedRectangle(cornerRadius: 8))
            
            Button("Сканировать состав") {
                
                
            }
            .font(.headline)
            .fontWeight(.bold)
            .frame(width: 180)
            .padding(10)
            .foregroundStyle(Color.white)
            .background(Color.blue, in: RoundedRectangle(cornerRadius: 8))

        }
        .padding()

    }
}

#Preview {
    ContentView()
}
