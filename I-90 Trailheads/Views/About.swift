//
//  About.swift
//  I-90 Trailheads (iOS)
//
//  Created by Michael Peters on 2/23/21.
//

import SwiftUI

struct About: View {
    var body: some View {
        VStack {
            Image("trailheads")
                .resizable()
                .frame(width: 150, height: 150)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.accentColor, lineWidth: 4))
                .shadow(radius: 10)
                .padding(.top, 100)
            Text("I-90 Trailheads")
                .font(.largeTitle)
                .padding(.top)
            Text("version 1.0.0")
                .font(.subheadline)
                .foregroundColor(.gray)
            Link("View on Github", destination: URL(string: "https://github.com/halcyon-research/I-90Trailheads")!)
                .font(.title3)
                .padding(.top, 20)
            Link("", destination: URL(string: "https://github.com/michaelpeterswa")!)
                .font(.title3)
                .padding(.top, 20)
            Text("I-90 Trailheads aims to be a resource for accessing \"strictly\" trailhead information (i.e. no trails) in the Puget Sound I-90 corridor. This listing is incomplete, expect it to be improved with time. Halcyon Research and michaelpeterswa hold no liability for the accuracy or completeness of this information.")
                .padding([.leading, .trailing], 60)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
            Spacer()
            Link("made by michaelpeterswa", destination: URL(string: "https://github.com/michaelpeterswa")!)
                .font(.headline)
                .padding(.bottom, 40)
            
        }
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
    }
}
