//
//  CarRacingGame.swift
//  CCStudy_RacingCar
//
//  Created by 신동규 on 2/16/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

public class CarRacingGame {
    
    public func outputResult() {
        for _ in 0 ..< carNum {
            print(randomAlloc())
        }
        
    }
    
    public func randomAlloc() -> String{
        
        var testResult:String = ""
        
        for _ in 0 ..< testNum {
            let random = Int.random(in: 0..<10)
            testResult.append(CarRacingGame.moveCheck(random: random))
        }
        
        return testResult
        
    }
    
    public static func moveCheck(random:Int) -> String {
        if random >= 4 {
            return "-"
        }
        
        return ""
    }
    
}
