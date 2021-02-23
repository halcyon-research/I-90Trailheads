//
//  TrailheadList.swift
//  I-90 Trailheads (iOS)
//
//  Created by Michael Peters on 2/21/21.
//

import SwiftUI

struct TrailheadList: View {
    var body: some View {
        NavigationView {
            List(trailheads) { trailhead in
                NavigationLink(destination: TrailheadInfo(trailhead: trailhead)) {
                TrailheadRow(trailhead: trailhead)
                    }
                }
            .navigationTitle("Trailheads")
        }
        
    }
}

struct TrailheadList_Previews: PreviewProvider {
    static var previews: some View {
        TrailheadList()
    }
}
