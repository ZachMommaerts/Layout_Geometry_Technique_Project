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
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
