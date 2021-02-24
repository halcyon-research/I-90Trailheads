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
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .padding(.top, 100)
            Text("I-90 Trailheads")
                .font(.largeTitle)
                .padding(.top)
            Text("version 1.0.0")
                .font(.subheadline)
                .foregroundColor(.gray)
            Spacer()
            Text("made by michaelpeterswa")
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.bottom, 40)
            
        }
    }
}

struct About_Previews: PreviewProvider {
    static var previews: some View {
        About()
    }
}
