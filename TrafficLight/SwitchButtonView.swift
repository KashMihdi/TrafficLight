//
//  SwitchButtonView.swift
//  TrafficLight
//
//  Created by Kasharin Mikhail on 08.06.2023.
//

import SwiftUI

struct SwitchButtonView: View {
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .foregroundColor(.white)
                .font(.title.bold())
                .padding(
                    EdgeInsets(
                        top: 12,
                        leading: 80,
                        bottom: 12,
                        trailing: 80
                    )
                )
                .background(backgroundColor)
                .cornerRadius(16)
        }
    }
}

struct SwitchButtonView_Previews: PreviewProvider {
    static var previews: some View {
        SwitchButtonView(title: "Hello", backgroundColor: .red) {}
    }
}
