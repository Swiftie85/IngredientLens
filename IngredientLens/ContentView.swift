//
//  ContentView.swift
//  IngredientLens
//
//  Created by Mark on 03.10.2026.
//

import SwiftUI

struct ContentView: View {
    @State private var button1 = "Вставить состав"
    @State private var button2 = "Сканировать состав"
    var body: some View {
        VStack {
            Text("IngredientLens")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .padding(10)
                .background(Color.green, in: RoundedRectangle(cornerRadius: 8))
                .offset(y: -200)
            
            Button(button1) {
                button1 = "Скоро будет магия"
                
            }
            .font(.headline)
            .fontWeight(.bold)
            .padding(10)
            .foregroundStyle(Color.white)
            .background(Color.blue, in: RoundedRectangle(cornerRadius: 8))
            .offset(y: 250)
            
            Button(button2) {
                button2 = "Скоро будет магия"
                
            }
            .font(.headline)
            .fontWeight(.bold)
            .padding(10)
            .foregroundStyle(Color.white)
            .background(Color.blue, in: RoundedRectangle(cornerRadius: 8))
            .offset(y: 260)
        }
        .padding()

    }
}

#Preview {
    ContentView()
}
