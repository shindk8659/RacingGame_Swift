//
//  Winner.swift
//  CarRacingGame
//
//  Created by 김예은 on 23/02/2019.
//  Copyright © 2019 kyeahen. All rights reserved.
//

import Foundation

public class Winner {

    private var cars = Car()
    private var name: [String]
    
    public init() {
        self.name = [String]()
    }

    //우승자를 구하는 함수
    public func winCar(index: Int, max: Int, value: Int) {
        if max == value {
            name.append(cars.getCars()[index])
        }
    }
    
    //우승자를 출력하는 함수
    public func getWinner() {
        
        for i in 0..<name.count {
            print(name[i], terminator:"")
            addComma(index: i)
        }
        print("가 최종 우승하였습니다.")
    }
    
    //콤마를 출력하는 함수
    public func addComma(index: Int) {
        if index != name.count - 1 {
            print(", ", terminator:"")
        }
    }
    
    
}
