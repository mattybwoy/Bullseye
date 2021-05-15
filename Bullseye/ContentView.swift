//
//  ContentView.swift
//  Bullseye
//
//  Created by Matthew Lock on 13/05/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("🎯🎯🎯\n PUT THE BULLSEYE AS CLOSE YOU CAN TO").bold().kerning(2).multilineTextAlignment(.center).lineSpacing(4.0).font(.footnote)
            Text("89")
            HStack {
                Text("1")
                Slider(value: .constant(50.00), in: 1.0...100.00)
                Text("100")
            }
            Button(action: {}) {
                Text("Hit me")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}

