//
//  CustomAlignmentGuide.swift
//  Layout_Geometry_Technique_Project
//
//  Created by Zach Mommaerts on 3/4/24.
//

import SwiftUI

extension VerticalAlignment {
    enum MidAccountAndName: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    
    static let midAccountAndName = VerticalAlignment(MidAccountAndName.self)
}

struct CustomAlignmentGuide: View {
    var body: some View {
        HStack(alignment: .midAccountAndName) {
            VStack {
                Text("@zmommaerts")
                    .alignmentGuide(.midAccountAndName, computeValue: { dimension in
                        dimension[VerticalAlignment.center]
                    })
                
                Image(.nicolasTissot335096)
                    .resizable()
                    .frame(width: 64, height: 64)
            }
            
            VStack {
                Text("Full Name:")
                Text("Zach Mommaerts")
                    .font(.largeTitle)
                    .alignmentGuide(.midAccountAndName, computeValue: { dimension in
                        dimension[VerticalAlignment.center]
                    })
            }
        }
    }
}

#Preview {
    CustomAlignmentGuide()
}
