//
//  AbsolutePositioning.swift
//  Layout_Geometry_Technique_Project
//
//  Created by Zach Mommaerts on 3/4/24.
//

import SwiftUI

struct AbsolutePositioning: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.blue)
            .offset(x: 100, y: 100)
            .background(.red)
    }
}

#Preview {
    AbsolutePositioning()
}
