//
//  MakeRandomNum.swift
//  CCStudy_RacingCar
//
//  Created by 신동규 on 2/23/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

class Racing {
    let carMove = CarMove()
    
    func raceRuslt() -> String{
        
        var raceResult:String = ""
        
        for _ in 0 ..< testNum {
            raceResult.append(carMove.moveCheck())
        }
        return raceResult
    
        
    }
}
