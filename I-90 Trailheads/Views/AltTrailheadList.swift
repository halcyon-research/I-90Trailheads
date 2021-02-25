//
//  AltTrailheadList.swift
//  I-90 Trailheads
//
//  Created by Michael Peters on 2/24/21.
//

import SwiftUI

struct AltTrailheadList: View {
    @State var trailheads: [Trailhead] = []
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(trailheads) { trailhead in
                        NavigationLink(destination: TrailheadInfo(trailhead: trailhead)) {
                            AltTrailheadRow(trailhead: trailhead)
                        }
                        }
                    }
                .padding([.leading, .trailing], 20)
                .onAppear {
                    TrailheadRequest().getTrailheads { (trailheads) in
                        self.trailheads = trailheads
                    }
                }
                .navigationTitle("Trailheads")
        }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        /// https://stackoverflow.com/questions/65316497/swiftui-navigationview-navigationbartitle-layoutconstraints-issue/65316745
        
    }
}

struct AltTrailheadList_Previews: PreviewProvider {
    static var previews: some View {
        AltTrailheadList()
    }
}
