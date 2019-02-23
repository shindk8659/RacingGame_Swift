//
//  CarMove.swift
//  CCStudy_RacingCar
//
//  Created by 신동규 on 2/23/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

class CarMove {
    
    func moveCheck() -> String {
        let random = Int.random(in: 0..<10)
        if random >= 4 {
            return "-"
        }
        
        return ""
    }
}
