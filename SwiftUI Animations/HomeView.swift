//
//  ContentView.swift
//  SwiftUI Animations
//
//  Created by Adriano Rezena on 07/04/23.
//

import SwiftUI

enum Animation: String, CaseIterable {
    case matchedGeometryEffectGrid = "MatchedGeometryEffect with Grids"
}

struct HomeView: View {

    var body: some View {
        NavigationStack {
            ForEach(Animation.allCases, id: \.self) { item in
                NavigationLink(
                    destination: {
                        switch item {
                        case .matchedGeometryEffectGrid:
                            MatchedGeometryEffectGrid()
                        }
                    },
                    label: {
                        Text(item.rawValue)
                    }
                )
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
