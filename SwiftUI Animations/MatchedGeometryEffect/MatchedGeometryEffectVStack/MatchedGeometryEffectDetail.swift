//
//  MatchedGeometryEffectDetail.swift
//  SwiftUI Animations
//
//  Created by Adriano Rezena on 10/04/23.
//

import SwiftUI

extension Color {
    static let background: Color = .black
}

struct MatchedGeometryEffectDetail: View {
    var namespace: Namespace.ID
    @Binding var selectedVersion: MacOSVersion?
    var version: MacOSVersion
    @State private var show = false
    
    var body: some View {
        ZStack {
            Color.background.ignoresSafeArea()
            
            GeometryReader { proxy in
                Image(version.imageName)
                    .resizable()
                    .scaledToFill()
                    .opacity(0.4)
                    .blur(radius: 20)
                    .ignoresSafeArea()
            }
            
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    HStack {
                        Text(version.name)
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .padding(.horizontal)
                            .matchedGeometryEffect(id: "\(version.id)name", in: namespace, properties: .position)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                    }
                    .overlay(alignment: .topLeading) {
                        Button(
                            action: { selectedVersion = nil },
                            label: {
                                Image(systemName: "xmark")
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Circle())
                            }
                        )
                        .padding(.leading)
                        .opacity(show ? 1 : 0)
                        .offset(x: show ? 0 : -50)
                    }
                        .zIndex(1)
                    
                    Image(version.imageName)
                        .resizable()
                        .scaledToFill()
                        .matchedGeometryEffect(id: version.id, in: namespace)
                    
                    Group {
                        HStack {
                            Text(version.fullname)
                                .font(.title3)
                                .italic()
                                .bold()
                                .opacity(0.5)
                                .foregroundColor(.white)
                            
                            Spacer()
                        }
                        
                        Text(version.description)
                            .padding(.bottom)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal)
                    .offset(y: show ? 0 : 20)
                    .opacity(show ? 1 : 0)
                    .animation(.easeOut.delay(0.4))
                }
            }
        }
        .navigationBarHidden(true)
        .onAppear {
            show.toggle()
        }
    }
}

struct MatchedGeometryEffectDetail_Previews: PreviewProvider {
    @Namespace static var namespace
    static var version: MacOSVersion = MacOSVersion.mock
    
    static var previews: some View {
        MatchedGeometryEffectDetail(
            namespace: namespace,
            selectedVersion: .constant(version),
            version: version
        )
    }
}
