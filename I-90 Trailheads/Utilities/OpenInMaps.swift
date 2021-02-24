//
//  OpenInMaps.swift
//  I-90 Trailheads (iOS)
//
//  Created by Michael Peters on 2/22/21.
//

import Foundation
import MapKit

func OpenInAppleMaps(name: String, coordinate: CLLocationCoordinate2D) {
    let coord = coordinate
    
    let placemark = MKPlacemark(coordinate: coord)
    let mapitem = MKMapItem(placemark: placemark)
    mapitem.name = name
    mapitem.openInMaps(launchOptions: nil)
}
