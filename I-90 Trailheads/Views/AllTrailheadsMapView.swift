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
    let coordinate = CLLocationCoordinate2DMake(47.496043, -121.784812)
    @State private var region = MKCoordinateRegion()
    @ObservedObject var locationManager = LocationManager()
    @State var trailheads: [Trailhead] = []
    @State private var annotationItems: [Location] = []
    
    struct Location: Identifiable {
        var id = UUID()
        var coordinates: CLLocationCoordinate2D
    }

    var body: some View {
        VStack {
            Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: annotationItems) { item in
                MapMarker(coordinate: item.coordinates)
            }
                .ignoresSafeArea(edges: .top)
                .onAppear {
                    setRegion(coordinate)
                    TrailheadRequest().getTrailheads(){ (trailheads) in
                        self.trailheads = trailheads
                        for th in trailheads {
                            annotationItems.append(Location(coordinates: th.locationCoordinate))
                        }
                    }

                }
        }
    }

    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        )
    }
}
