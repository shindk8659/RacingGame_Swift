//
//  Car.swift
//  CCStudy_RacingCar
//
//  Created by 신동규 on 2/23/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

class Game{
    
    let racing = Racing()

    func getCarName() -> Void {
        
        let carNameArr = carString.components(separatedBy: [","]).map { (value:String) -> String in
            return String(value)
        }
        startCarRace(carNameArr: carNameArr)
    }
    
    func startCarRace(carNameArr:Array<String>)->Void {

        var raceResultArr:Array<Car> = []
        
        for i in 0..<carNameArr.count {
            let result = racing.raceRuslt()
            let name = carNameArr[i]
            let car = Car(name: name, distance: result)
            
            print("\(carNameArr[i]) : \(result)")
            raceResultArr.append(car)
        }
        resultRanking(raceResult:raceResultArr)
        
    }
    
    func resultRanking(raceResult:Array<Car>) {
      
        var longDistance:String = ""
        var resultString:String = ""
        
        if let max = raceResult.max(by: {$1.distance.count > $0.distance.count}) {
            longDistance = max.distance
        }
        
        let indexArray = raceResult.indices.filter { raceResult[$0].distance.localizedCaseInsensitiveContains(longDistance)}
        
        for i in 0..<indexArray.count {
            
            resultString.append(raceResult[indexArray[i]].name)
            resultString.append(seprateWinners(index: i, max: indexArray.count))
            
        }
        print("\(resultString)가 최종 우승했습니다.")
        
    }
    
    func seprateWinners(index:Int,max:Int) -> String{
        
        if index != max - 1 {
           return ", "
        }
        return ""
        
    }
    
   
}
