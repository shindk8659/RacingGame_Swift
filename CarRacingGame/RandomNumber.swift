//
//  RandomNumber.swift
//  CarRacingGame
//
//  Created by 김예은 on 22/02/2019.
//  Copyright © 2019 kyeahen. All rights reserved.
//

import Foundation

public class RandomNumber {
    
    private let minNumber = 0
    private let maxNumber = 10
    private var randomNumber: Int
    
    public init() {
        self.randomNumber = 0
    }
    
    public func getRandomNumber() -> Int {
        return Int.random(in: minNumber ..< maxNumber)
    }
}
