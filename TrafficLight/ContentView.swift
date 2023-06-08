//
//  ContentView.swift
//  TrafficLight
//
//  Created by Kasharin Mikhail on 08.06.2023.
//

import SwiftUI

struct ContentView: View {
    
    enum TrafficColor {
        case red, yellow, green, switchedOff
        
        var nextColor: TrafficColor {
            switch self {
            case .red:
                return .yellow
            case .yellow:
                return .green
            case .green:
                return .red
            case .switchedOff:
                return .red
            }
        }
    }
    
    @State private var currentColor: TrafficColor = .switchedOff

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing: 12) {
                TrafficSignalView(
                    color: .red,
                    opacity: currentColor == .red ? 1 : 0.5,
                    showShadow: currentColor == .red
                )
                TrafficSignalView(
                    color: .yellow,
                    opacity: currentColor == .yellow ? 1 : 0.5,
                    showShadow: currentColor == .yellow
                )
                TrafficSignalView(
                    color: .green,
                    opacity: currentColor == .green ? 1 : 0.5,
                    showShadow: currentColor == .green
                )
                Spacer()
                SwitchButtonView(
                    title: currentColor == .switchedOff ? "START" : "NEXT",
                    backgroundColor: currentColor == .switchedOff ? .red : .green,
                    action: { currentColor = currentColor.nextColor }
                )
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
