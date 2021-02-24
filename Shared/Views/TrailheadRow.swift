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
                    .fontWeight(.medium)
                    .padding(.leading)
                    .font(.title3)
                    .lineLimit(1)
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
        .padding([.top, .bottom], 5)
    }
}
