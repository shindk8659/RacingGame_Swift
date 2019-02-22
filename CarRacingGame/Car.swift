//
//  Car.swift
//  CarRacingGame
//
//  Created by 김예은 on 22/02/2019.
//  Copyright © 2019 kyeahen. All rights reserved.
//

import Foundation

public class Car {
    
    private let forward_standard = 4
    private var position: Int
    
    public init() {
        self.position = 0
    }
    
    public func move(value: Int) {
        if value <= forward_standard {
            position += 1
        }
    }
    
    public func getPosition() -> Int {
        return position
    }
    
    
}
