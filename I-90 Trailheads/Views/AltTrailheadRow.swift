//
//  TrailheadRow.swift
//  I-90 Trailheads (iOS)
//
//  Created by Michael Peters on 2/21/21.
//

import SwiftUI

struct AltTrailheadRow: View {
    var trailhead: Trailhead
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.accentColor)
                .shadow(radius: 5)
            VStack {
                HStack {
                    Text(trailhead.name)
                        .foregroundColor(.black)
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
                .foregroundColor(.gray)
                .font(.subheadline)
                
            }
            .padding([.top, .bottom], 5)
        }
    }
}
