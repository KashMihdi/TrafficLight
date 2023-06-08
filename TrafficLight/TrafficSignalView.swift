//
//  TrafficSignalView.swift
//  TrafficLight
//
//  Created by Kasharin Mikhail on 08.06.2023.
//

import SwiftUI

struct TrafficSignalView: View {
    let color: Color
    var opacity: Double
    var showShadow: Bool
    
    var body: some View {
        Circle()
            .frame(width: 140, height: 140)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .shadow(color: showShadow ? color : .clear, radius: 16)
    }
}

struct TrafficSignalView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficSignalView(color: .red, opacity: 10, showShadow: true)
    }
}
