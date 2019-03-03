//
//  Car.swift
//  CCStudy_RacingCar
//
//  Created by 신동규 on 2/23/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

class Game{
    
    private var cars:Array<Car> = []

    public func getCarName() -> Void {
        
        let carNameArr = carString.components(separatedBy: [","]).map { (value:String) -> String in
            return String(value)
        }
        setCarName(carNameArr: carNameArr)
        startCarRace()
    }
    
    
    private func setCarName(carNameArr:Array<String>) {
        for i in 0..<carNameArr.count {
            let car = Car()
            car.name = carNameArr[i]
            cars.append(car)
        }
    }
    
    private func startCarRace(){
        for i in 0..<cars.count {
            print("\(cars[i].name) : \(cars[i].move())")
        }
        resultRanking(raceResult:cars)
        
    }
    
    private func resultRanking(raceResult:Array<Car>) {
        var winnerIndex:Array<Int> = []
        var longDistance:String = ""
        var resultString:String = ""
        
        longDistance = getMaxDistanceInGame(raceResult: raceResult)
        winnerIndex = findDuplicateWinner(raceResult: raceResult,longDistance: longDistance)
        
        for i in 0..<winnerIndex.count {
            
            resultString.append(raceResult[winnerIndex[i]].name)
            resultString.append(seprateWinners(index: i, max: winnerIndex.count))
            
        }
        print("\(resultString)가 최종 우승했습니다.")
        
    }
    
    private func getMaxDistanceInGame(raceResult:Array<Car>) -> String {
        
        var longDistance:String = ""
        
        if let max = raceResult.max(by: {$1.distance.count > $0.distance.count}) {
            
            longDistance = max.distance
            
        }
        
        return longDistance
        
    }
    
    private func findDuplicateWinner(raceResult:Array<Car>, longDistance:String) ->Array<Int> {
        
        return raceResult.indices.filter { raceResult[$0].distance.localizedCaseInsensitiveContains(longDistance)}
        
    }
    
    private func seprateWinners(index:Int,max:Int) -> String{
        
        if index != max - 1 {
            
           return ", "
            
        }
        
        return ""
        
    }
    
    
    
   
}
