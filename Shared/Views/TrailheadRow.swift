//
//  TrailheadRow.swift
//  I-90 Trailheads (iOS)
//
//  Created by Michael Peters on 2/21/21.
//

import SwiftUI

struct TrailheadRow: View {
    var trailhead: Trailhead
    
    var body: some View {
        VStack {
            HStack {
                Text(trailhead.name)
                    .padding(.leading)
                    .font(.title3)
                Spacer()
            }
            HStack {
                Text("Elev. " + trailhead.elevation)
                    .padding(.leading)
                Spacer()
                Text("Exit: " + trailhead.exit).padding(.trailing)
            }
            .foregroundColor(.gray)
            .font(.subheadline)
            
        }
        .padding([.top, .bottom])
    }
}

struct TrailheadRow_Previews: PreviewProvider {
    static var previews: some View {
        TrailheadRow(trailhead: trailheads[0])
            .previewLayout(.fixed(width: 300, height: 70))
    }
    
}
