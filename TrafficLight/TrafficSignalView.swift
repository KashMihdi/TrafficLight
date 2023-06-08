//
//  TrafficSignalView.swift
//  TrafficLight
//
//  Created by Kasharin Mikhail on 08.06.2023.
//

import SwiftUI

struct TrafficSignalView: View {
    let color: Color
    var opacity: Double = 0.5
    
    var body: some View {
        Circle()
            .frame(width: 130, height: 130)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(radius: 10)
    }
}

struct TrafficSignalView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficSignalView(color: .red)
    }
}
