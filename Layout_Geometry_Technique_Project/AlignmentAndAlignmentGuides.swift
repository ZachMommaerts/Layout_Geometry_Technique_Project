//
//  AlignmentAndAlignmentGuides.swift
//  Layout_Geometry_Technique_Project
//
//  Created by Zach Mommaerts on 3/4/24.
//

import SwiftUI

struct AlignmentAndAlignmentGuides: View {
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(0..<10) { position in
                    Text("Number \(position)")
                    .alignmentGuide(.leading, computeValue: { _ in
                        Double(position) * -10
                    })
            }
        }
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.blue)
        
        
//        VStack(alignment: .leading) {
//            Text("Hello world!")
//                .alignmentGuide(.leading, computeValue: { dimension in
//                    dimension[.trailing]
//                })
//            Text("This is a longer line of text")
//        }
//        .background(.red)
//        .frame(width: 400, height: 400)
//        .background(.blue)
        
        
//        HStack(alignment: .lastTextBaseline){
//            Text("Live")
//                .font(.caption)
//            
//            Text("long")
//                
//            Text("and")
//                .font(.title)
//            
//            Text("prosper")
//                .font(.largeTitle)
//        }
    }
}

#Preview {
    AlignmentAndAlignmentGuides()
}
