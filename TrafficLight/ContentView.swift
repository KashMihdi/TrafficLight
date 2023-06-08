//
//  ContentView.swift
//  TrafficLight
//
//  Created by Kasharin Mikhail on 08.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    var body: some View {
        VStack {
            VStack {
                TrafficSignalView(color: .red, opacity: 1)
                TrafficSignalView(color: .yellow)
                TrafficSignalView(color: .green)
            }
            Spacer()
            Button(action: { tapCount += 1 }) {
                Text("Tap count: \(tapCount)")
                    .font(.title)
            }
        }
        .padding(.top, 30)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
