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

class TrailheadRequest {
    func getTrailheads(completion: @escaping ([Trailhead]) -> ()) {
        guard let url = URL(string: "https://michaelpeterswa.com/final_trailheads.json") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            if let data = data {
                if let trailheads = try? JSONDecoder().decode([Trailhead].self, from: data) {
                    DispatchQueue.main.async {
                        completion(trailheads)
                    }
                    return
                }
            }
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }
        .resume()
    }
}
