//
//  ContentView.swift
//  Layout_Geometry_Technique_Project
//
//  Created by Zach Mommaerts on 3/4/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Layout/Geometry Technique Project")
                    .font(.title)
                Spacer()
                Section {
                    NavigationLink {
                        HowLayoutsWork()
                    } label: {
                        Text("HowLayoutsWork")
                    }
                    
                    NavigationLink {
                        AlignmentAndAlignmentGuides()
                    } label: {
                        Text("AlignmentAndAlignmentGuides")
                    }
                    
                    NavigationLink {
                        CustomAlignmentGuide()
                    } label: {
                        Text("CustomAlignmentGuide")
                    }
                    
                    NavigationLink {
                        AbsolutePositioning()
                    } label: {
                        Text("AbsolutePositioning")
                    }
                } header: {
                    Text("Part One")
                }
                
                Section {
                    NavigationLink {
                        ResizeImagesGeometryReader()
                    } label: {
                        Text("ResizeImagesGeometryReader")
                    }
                    
                    NavigationLink {
                        FramesAndCoordinatesGeometryReader()
                    } label: {
                        Text("FramesAndCoordinatesGeometryReader")
                    }
                    
                    NavigationLink {
                        ScrollViewEffectsGeometryReader()
                    } label: {
                        Text("ScrollViewEffectsGeometryReader")
                    }
                    
                    NavigationLink {
                        VisualEffectAndScrollTargetBehavior()
                    } label: {
                        Text("VisualEffectAndScrollTargetBehavior")
                    }
                } header: {
                    Text("Part Two")
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
