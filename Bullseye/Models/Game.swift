//
//  Game.swift
//  Bullseye
//
//  Created by Matthew Lock on 16/05/2021.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        //implicit return below for difference value in absolute terms
        100 - abs(target - sliderValue)
    }
}
