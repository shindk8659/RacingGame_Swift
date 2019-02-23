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
    private var name: [String]

    public init() {
        self.position = 0
        self.name = [String]()
    }

    //수정하삼 배열 아닌걸로
    public func setCars(names: String) {
        name = names.components(separatedBy: ",")
        print(name)
    }

    //차를 반환하는 함수
    public func getCars() -> [String] {
        return name
    }

    //차의 수를 반환하는 함수
    public func getCarCount() -> Int {
        return name.count
    }

    //차의 움직임 체크하는 함수
    public func move(value: Int) {
        if value <= forward_standard {
            position += 1
        }
    }
    
    //차의 위치값 반환하는 함수
    public func getPosition() -> Int {
        return position
    }
}
