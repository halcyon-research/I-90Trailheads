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
                Text("Exit: " + trailhead.exit)
                    .padding(.leading)
                Spacer()
                Text("Elev. " + trailhead.elevation).padding(.trailing)
                
            }
            .foregroundColor(.accentColor)
            .font(.subheadline)
            
        }
        .padding([.top, .bottom], 5)
    }
}
