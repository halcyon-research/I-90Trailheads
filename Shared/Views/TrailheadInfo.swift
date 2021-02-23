//
//  TrailheadInfo.swift
//  I-90 Trailheads (iOS)
//
//  Created by Michael Peters on 2/22/21.
//

import SwiftUI

struct TrailheadInfo: View {
    var trailhead: Trailhead
    
    var body: some View {
        VStack {
            MapView(coordinate: trailhead.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)
            ScrollView {
                Text(trailhead.name)
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                    .padding([.bottom, .top])
                Divider()
                    .padding([.leading, .trailing])
                HStack {
                    Text("Information:")
                        .font(.title2)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .padding([.leading, .trailing, .top])
                    Spacer()
                }
                Spacer(minLength: 10)
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text("I-90 Exit: ")
                            Spacer()
                            Text(trailhead.exit)
                        }
                        HStack {
                            Text("Elevation: ")
                            Spacer()
                            if trailhead.elevation != "Unknown" {
                                Text(trailhead.elevation + "'")
                            }
                            else {
                                Text(trailhead.elevation)
                            }
                            
                        }
                        HStack {
                            Text("Parking: ")
                            Spacer()
                            Text(trailhead.parking)
                        }
                        HStack {
                            Text("Permit: ")
                            Spacer()
                            Text(trailhead.permit)
                            
                        }
                        HStack {
                            Text("Facilities: ")
                            Spacer()
                            Text(trailhead.facilities)
                        }
                        if trailhead.notes != "" {
                            HStack {
                                Text("Notes: ")
                                Spacer()
                                Text(trailhead.notes)
                            }
                        }
                    }
                    .font(.headline)
                    .padding([.leading, .trailing])
                    Spacer()
                    
                }
                Spacer(minLength: 20)
                Button(){
                    OpenInAppleMaps(name: trailhead.name, coordinate: trailhead.locationCoordinate)
                } label: {
                        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                            Text(String(trailhead.coords[0]) + ", " + String(trailhead.coords[1]))
                                .foregroundColor(.accentColor)
                                .font(.title2)
                            Text("Open in Apple Maps")
                                .foregroundColor(.accentColor)
                        }
                    }
                }
            }
        }
    }

struct TrailheadInfo_Previews: PreviewProvider {
    static var previews: some View {
        TrailheadInfo(trailhead: trailheads[0])
    }
}
