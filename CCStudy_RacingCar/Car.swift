//
//  Car.swift
//  CCStudy_RacingCar
//
//  Created by 신동규 on 2/23/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

class Car {
    let racing = Racing()
    func carRace()->Void {
        for _ in 0..<carNum {
            racing.race()
        }
    }
   
}
