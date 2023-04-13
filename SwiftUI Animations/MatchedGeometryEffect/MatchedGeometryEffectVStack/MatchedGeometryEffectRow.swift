//
//  MatchedGeometryEffectRow.swift
//  SwiftUI Animations
//
//  Created by Adriano Rezena on 10/04/23.
//

import SwiftUI

struct MatchedGeometryEffectRow: View {
    var namespace: Namespace.ID
    @Binding var selectedVersion: MacOSVersion?
    var version: MacOSVersion
    
    var body: some View {
        VStack {
            if version.id != selectedVersion?.id {
                Image(version.imageName)
                    .resizable()
                    .scaledToFill()
                    .cornerRadius(8)
                    .matchedGeometryEffect(id: version.id, in: namespace)
                    .overlay(alignment: .top) {
                        Text(version.name)
                            .font(.title2)
                            .fontWeight(.black)
                            .foregroundColor(.white)
                            .matchedGeometryEffect(id: "\(version.id)name", in: namespace, properties: .position)
                            .zIndex(1)
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                            .background {
                                Color.background.opacity(0.4)
                            }
                    }
                    .onTapGesture {
                        selectedVersion = version
                    }
            } else {
                Image(version.imageName)
                    .resizable()
                    .scaledToFill()
                    .hidden()
            }
        }
        .padding(.horizontal)
        .onTapGesture {
            selectedVersion = version
        }
    }
}

struct MatchedGeometryEffectRow_Previews: PreviewProvider {
    @Namespace static var namespace
    static var version: MacOSVersion = MacOSVersion.mock
    
    static var previews: some View {
        MatchedGeometryEffectRow(
            namespace: namespace,
            selectedVersion: .constant(version),
            version: version
        )
    }
}
