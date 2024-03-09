//
//  Challenge.swift
//  Layout_Geometry_Technique_Project
//
//  Created by Zach Mommaerts on 3/9/24.
//

import SwiftUI

struct Challenge: View {
    let colors: [Color] = [.red, .green, .blue, .orange, .pink, .purple, .yellow]

    var body: some View {
        GeometryReader { fullView in
            ScrollView(.vertical) {
                ForEach(0..<50) { index in
                    GeometryReader { proxy in
                        Text("Row #\(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(Color(hue: min(proxy.frame(in: .global).minY / fullView.frame(in: .global).maxY, 1.0), saturation: 1, brightness: 1))
                            .rotation3DEffect(.degrees(proxy.frame(in: .global).minY - fullView.size.height / 2) / 5, axis: (x: 0, y: 1, z: 0))
                            .scaleEffect(CGSize(width: proxy.frame(in: .global).maxY / 500, height: proxy.frame(in: .global).maxY / 500))
                            .opacity( proxy.frame(in: .global).minY / 200)
                    }
                    .frame(height: 40)
                }
            }
        }
    }
}

#Preview {
    Challenge()
}
