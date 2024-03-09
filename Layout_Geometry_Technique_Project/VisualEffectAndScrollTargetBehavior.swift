//
//  VisualEffectAndScrollTargetBehavior.swift
//  Layout_Geometry_Technique_Project
//
//  Created by Zach Mommaerts on 3/9/24.
//

import SwiftUI

struct VisualEffectAndScrollTargetBehavior: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                ForEach(1..<20) { number in
                        Text("Number \(number)")
                        .font(.largeTitle)
                        .padding()
                        .background(.red)
                        .frame(width: 200, height: 200)
                        .visualEffect { content, proxy in
                            content
                                .rotation3DEffect(
                                    .degrees(-proxy.frame(in: .global).minX / 8),
                                    axis: (x: 0, y: 1, z: 0)
                            )
                        }
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
    }
}

#Preview {
    VisualEffectAndScrollTargetBehavior()
}
