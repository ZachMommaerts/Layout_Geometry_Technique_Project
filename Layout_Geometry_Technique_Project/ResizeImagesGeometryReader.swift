//
//  ResizeImagesGeometryReader.swift
//  Layout_Geometry_Technique_Project
//
//  Created by Zach Mommaerts on 3/9/24.
//

import SwiftUI

struct ResizeImagesGeometryReader: View {
    var body: some View {
        HStack {
            Text("Important")
                .frame(width: 200)
                .background(.blue)
            
            GeometryReader { proxy in
                Image(.nicolasTissot335096)
                    .resizable()
                    .scaledToFit()
                    .frame(width: proxy.size.width * 0.8)
                    .frame(width: proxy.size.width, height: proxy.size.height)
            }
        }
    }
}

#Preview {
    ResizeImagesGeometryReader()
}
