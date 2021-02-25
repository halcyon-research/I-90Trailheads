//
//  GPSView.swift
//  I-90 Trailheads
//
//  Created by Michael Peters on 2/24/21.
//

import SwiftUI

struct GPSView: View {
    @ObservedObject var locationManager = LocationManager()

    var userLatitude: String {
        return "\(locationManager.lastLocation?.coordinate.latitude.truncate(places: 6) ?? 0)"
    }

    var userLongitude: String {
        return "\(locationManager.lastLocation?.coordinate.longitude.truncate(places: 6) ?? 0)"
    }

    var body: some View {
        VStack {
            Text("Current GPS Data")
                .font(.largeTitle)
                .padding(.bottom, 20)
            Text("latitude: \(userLatitude)").font(.title3)
            Text("longitude: \(userLongitude)").font(.title3)
            
            Button(){
                OpenInAppleMaps(name: "My Location", coordinate: locationManager.lastLocation!.coordinate)
            } label: {
                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                        Text("Open My Location  in Apple Maps")
                            .foregroundColor(.accentColor)
                    }
            }
            .padding(.top, 20)
            Spacer()
            
        }
        .padding(.top, 40)
    }
}

struct GPSView_Previews: PreviewProvider {
    static var previews: some View {
        GPSView()
    }
}
