//
//  MatchedGeometryEffectGrid.swift
//  SwiftUI Animations
//
//  Created by Adriano Rezena on 07/04/23.
//

import SwiftUI

struct MatchedGeometryEffectGrid: View {
    
    @State private var animals: [String] = [
        "🐶",
        "🐱",
        "🐭",
        "🐹",
        "🐰",
        "🦊",
        "🐻",
        "🐼",
        "🐻‍❄️",
        "🐨",
        "🐯",
        "🦁",
        "🐮",
        "🐷"
    ]
    @State private var favorites: [String] = ["🐷"]
    
    var body: some View {
        VStack {
            favoriteAnimalsView
            
            animalsGridView
        }
    }
    
    var favoriteAnimalsView: some View {
        VStack {
            Text("Favorites")
                .font(.title)
                .bold()
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: [GridItem(.fixed(50))]) {
                    ForEach(favorites, id: \.self) { favorite in
                        Button(
                            action: {
                                favorites.removeAll(where: { $0 == favorite })
                                animals.append(favorite)
                            },
                            label: {
                                RoundedRectangle(cornerRadius: 8)
                                    .fill(Color.orange.opacity(0.5))
                                    .overlay {
                                        Text(favorite)
                                            .font(.system(size: 60))
                                    }
                                    .frame(height: 80)
                                    .frame(width: 80)
                                    
                            }
                        )
                    }
                }
                .padding(.horizontal, 16)
            }
            .frame(height: 100)
        }
    }
    
    var animalsGridView: some View {
        VStack {
            Text("Select your animals")
                .font(.headline)

            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                    ForEach(animals, id: \.self) { animal in
                        Button(
                            action: {
                                animals.removeAll(where: { $0 == animal })
                                favorites.append(animal)
                            },
                            label: {
                                RoundedRectangle(cornerRadius: 8)
                                    .overlay {
                                        Text(animal)
                                            .font(.system(size: 60))
                                    }
                                    .frame(height: 80)
                            }
                        )
                    }
                }
            }
        }
        .padding(.horizontal, 16)
    }
}

struct MatchedGeometryEffectGrid_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeometryEffectGrid()
    }
}
