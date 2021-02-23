//
//  Trailhead.swift
//  I-90 Trailheads (iOS)
//
//  Created by Michael Peters on 2/21/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct Trailhead: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var desc: String
    var exit: String
    var elevation: String
    var parking: String
    var permit: String
    var facilities: String
    var notes: String

    var coords: [Double]
    
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coords[0],
            longitude: coords[1])
    }
    

}
