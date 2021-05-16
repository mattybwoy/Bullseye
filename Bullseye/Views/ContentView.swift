//
//  ContentView.swift
//  Bullseye
//
//  Created by Matthew Lock on 13/05/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false
    
    @State private var sliderValue: Double = 50.0
    
    @State private var game: Game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\n PUT THE BULLSEYE AS CLOSE YOU CAN TO").bold().kerning(2).multilineTextAlignment(.center).lineSpacing(4.0).font(.footnote)
            Text(String(game.target)).kerning(-1).font(.largeTitle).fontWeight(.black)
            HStack {
                Text("1").bold()
                Slider(value: self.$sliderValue, in: 1.0...100.00)
                Text("100").bold()
            }
            Button(action: {self.alertIsVisible = true}) {
                Text("Hit me")
            }
            .alert(isPresented: $alertIsVisible, content: {
                var roundedValue: Int = Int(self.sliderValue.rounded())
                return Alert(title: Text("Hello"), message: Text("The slider's value is \(roundedValue).\n" + "You scored \(self.game.points(sliderValue:roundedValue)) points this round."), dismissButton: .default(Text("Awesome")))
            })        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
