//
//  MakeRandomNum.swift
//  CCStudy_RacingCar
//
//  Created by 신동규 on 2/23/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

class Racing {
    
    private let carMove = CarMove()
    
    public func raceRuslt() -> String{
        
        var raceResult:String = ""
        
        for _ in 0 ..< testNum {
            raceResult.append(carMove.moveCheck())
        }
        return raceResult
    
        
    }
}
