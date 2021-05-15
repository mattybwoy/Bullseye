//
//  ContentView.swift
//  Bullseye
//
//  Created by Matthew Lock on 13/05/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\n PUT THE BULLSEYE AS CLOSE YOU CAN TO").bold().kerning(2).multilineTextAlignment(.center).lineSpacing(4.0).font(.footnote)
            Text("89").kerning(-1).font(.largeTitle).fontWeight(.black)
            HStack {
                Text("1").bold()
                Slider(value: .constant(50.00), in: 1.0...100.00)
                Text("100").bold()
            }
            Button(action: {self.alertIsVisible = true}) {
                Text("Hit me")
            }
            .alert(isPresented: $alertIsVisible, content: {
                return Alert(title: Text("Hello"), message: Text("This is a pop up"), dismissButton: .default(Text("Awesome")))
            })        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}

