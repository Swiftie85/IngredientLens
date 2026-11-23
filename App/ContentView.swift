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
    @State private var ingredients: [String] = []
    private var trimmedIngredientsText: String {
        ingredientsText.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    func clearInput() {
        ingredientsText = ""
        ingredients = []
    }
    
    func parseIngredients(ingredients: String) -> [String] {
        let parsedIngredients = ingredients.trimmingCharacters(in: .whitespacesAndNewlines)
            .components(separatedBy: ",")
            .map { ingredient in
                ingredient.trimmingCharacters(in: .whitespacesAndNewlines)
            }
            .filter { ingredient in
                !ingredient.isEmpty}
        return parsedIngredients
    }
    
    
    let ingredientOne = Ingredient(
        name: "Вода",
        description: "ашдвао",
    )
    
    let ingredientTwo = Ingredient(
        name: "Мука",
        description: "белый порошек",
    )
    
    let ingredientThree = Ingredient(
        name: "Яблоко",
        description: "упало",
    )
    
    let ingredientFour = Ingredient(
        name: "Соль",
        description: "ляси",
    )
    
    var ingredientsList: [Ingredient] {
        [ingredientOne, ingredientTwo, ingredientThree, ingredientFour]
    }
    
    func ingredientDescription(ingredient: String) -> String {
        var result = ""

        for ingredientInBase in ingredientsList{
            if ingredientInBase.name == ingredient {
                result = ingredientInBase.description
            }
        }
        result = result == "" ? "Описание не найдено" : result
        return result
    }
    
    
    var body: some View {
        GeometryReader { geometry in

            VStack (spacing: 16) {
                
                Text("IngredientLens")
                    .foregroundStyle(.green)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 130)


                Spacer()
                
                VStack(spacing: 12) {
                    Button("Сканировать") {
                    }
                    .font(.custom("SF Pro", fixedSize: 17))
                    .fontWeight(.regular)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .foregroundStyle(Color.white)
                    .background(Color.black, in: RoundedRectangle(cornerRadius: 25))
                    
                    Button("Ввести состав") {
                        isInputVisible.toggle()
                        
                    }
                    .font(.custom("SF Pro", size: 17))
                    .fontWeight(.regular)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .foregroundStyle(Color.black)
                    .background(Color(red: 210 / 255, green: 237 / 255, blue: 159 / 255), in: RoundedRectangle(cornerRadius: 25))
                }
                .frame(width: 200)
                .padding(.bottom, 30)

            }
            .padding()
            .frame(
                maxWidth: .infinity,
                minHeight: geometry.size.height
            )

            

        }

        
    }
}

#Preview {
    ContentView()
    
}





// Text("\(testStruct.name), \(testStruct.description)")



//                if isInputVisible {
//
//                    TextEditor(text: $ingredientsText)
//                        .scrollContentBackground(.hidden)
//                        .frame(height: 150)
//                        .background(Color.white, in: RoundedRectangle(cornerRadius: 8))
//                        .overlay {
//                            RoundedRectangle(cornerRadius: 8)
//                                .stroke(Color.green, lineWidth: 1)
//                        }
//
//
//
//                    Button("Анализ состава") {
//                        ingredients = parseIngredients(ingredients: ingredientsText)
////                        for ingredient in ingredients {
////                            ingredientDescription(ingredient: ingredient)
////                        }
//                    }
//                    .disabled(trimmedIngredientsText.isEmpty)
//
//                    Button("Очистить") {
//                        clearInput()
//                    }
//                    .disabled(trimmedIngredientsText.isEmpty && ingredients.isEmpty)
//
//
//
//                    ForEach(ingredients, id:\.self) { ingredient in
//                        Text("\(ingredient): \(ingredientDescription(ingredient: ingredient))")
//                    }
//
//
//
//
//                }

//                ForEach(ingredientsList, id: \.self) { ingredient in
//                    Text(ingredient.name)
//                        .font(.headline)
//                    Text(ingredient.description)
//                }
