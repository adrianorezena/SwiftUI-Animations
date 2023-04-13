//
//  MatchedGeometryEffectVStack.swift
//  SwiftUI Animations
//
//  Created by Adriano Rezena on 10/04/23.
//

import SwiftUI


struct MatchedGeometryEffectVStack: View {
    @Namespace var namespace
    @State var selectedVersion: MacOSVersion?
    @State var versions: [MacOSVersion] = MacOSVersion.getAll()
    
    var body: some View {
        ZStack {
            Color.background.edgesIgnoringSafeArea(.all)
            
            ScrollView {
                LazyVStack(spacing: 12, pinnedViews: .sectionHeaders) {
                    ForEach(versions) { version in
                        MatchedGeometryEffectRow(
                            namespace: namespace,
                            selectedVersion: $selectedVersion,
                            version: version
                        )
                            .animation(.easeOut)
                    }
                }
            }
            .overlay(
                Group {
                    if let selectedVersion = selectedVersion {
                        MatchedGeometryEffectDetail(
                            namespace: namespace,
                            selectedVersion: $selectedVersion,
                            version: selectedVersion
                        )
                            .animation(.easeOut)
                    }
                }
            )
        }
    }
}

struct MatchedGeometryEffectVStack_Previews: PreviewProvider {
    static var previews: some View {
        MatchedGeometryEffectVStack()
    }
}
