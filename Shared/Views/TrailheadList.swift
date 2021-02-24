//
//  TrailheadList.swift
//  I-90 Trailheads (iOS)
//
//  Created by Michael Peters on 2/21/21.
//

import SwiftUI

struct TrailheadList: View {
    @State var trailheads: [Trailhead] = []
    
    var body: some View {
        NavigationView {
            List(trailheads) { trailhead in
                NavigationLink(destination: TrailheadInfo(trailhead: trailhead)) {
                TrailheadRow(trailhead: trailhead)
                    }
                }
            .onAppear {
                TrailheadRequest().getTrailheads { (trailheads) in
                    self.trailheads = trailheads
                }
            }
            .navigationTitle("Trailheads")
        }
        .navigationViewStyle(StackNavigationViewStyle())
        /// https://stackoverflow.com/questions/65316497/swiftui-navigationview-navigationbartitle-layoutconstraints-issue/65316745
        
    }
}

struct TrailheadList_Previews: PreviewProvider {
    static var previews: some View {
        TrailheadList()
    }
}
