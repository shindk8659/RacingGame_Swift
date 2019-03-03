//
//  Car2.swift
//  CCStudy_RacingCar
//
//  Created by 신동규 on 2/23/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

class Car {
    
    public var name:String = ""
    public var distance:String = ""
    private let racing = Racing()
    
    public func move() ->String {
        distance = racing.raceRuslt()
        return distance
    }
    
    
    
}
