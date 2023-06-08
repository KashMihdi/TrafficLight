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
        
        mutating func nextColor() {
            switch self {
            case .red:
                self = .yellow
            case .yellow:
                self = .green
            case .green:
                self = .red
            case .switchedOff:
                self = .red
            }
        }
    }
    
    @State private var currentColor: TrafficColor = .switchedOff

    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack(spacing: 8) {
                TrafficSignalView(
                    color: .red,
                    turnOnLight: currentColor == .red
                )
                TrafficSignalView(
                    color: .yellow,
                    turnOnLight: currentColor == .yellow
                )
                TrafficSignalView(
                    color: .green,
                    turnOnLight: currentColor == .green
                )
                
                Spacer()
                
                SwitchButtonView(
                    title: currentColor == .switchedOff ? "START" : "NEXT",
                    backgroundColor: currentColor == .switchedOff
                        ? .red
                        : .green,
                    action: { currentColor.nextColor() }
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
