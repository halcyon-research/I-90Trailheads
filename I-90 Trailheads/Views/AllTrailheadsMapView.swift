//
//  AllTrailheadsMapView.swift
//  I-90 Trailheads (iOS)
//
//  Created by Michael Peters on 2/23/21.
//

import SwiftUI
import CoreLocation
import MapKit

struct AllTrailheadsMapView: View {
    let coordinate = CLLocationCoordinate2DMake(47.468188, -121.936349)
    @State private var region = MKCoordinateRegion()
//    @State var trailheads: [Trailhead]
    
    
    struct Location: Identifiable {
        var id = UUID()
        var coordinates: CLLocationCoordinate2D
    }

    var body: some View {
//        private var annotationItems: [Location] = []
        Map(coordinateRegion: $region)
//        { item in
//            MapMarker(coordinate: coordinate)
//        }
            .ignoresSafeArea(edges: .top)
            .onAppear {
                setRegion(coordinate)
//                TrailheadRequest().getTrailheads(){ (trailheads) in
//                    self.trailheads = trailheads
//                }
//                for th in trailheads {
//                    annotationItems.append(Location(coordinates: th.locationCoordinate))
//                }
            }
    }

    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        )
    }
}
