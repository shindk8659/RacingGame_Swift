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
    
    private var position: Int = 0
    private var name: String = ""
    
    public init(name: String) {
        self.name = name
    }

    //차의 움직임을 체크하는 함수
    public func move(value: Int) {
        if value <= forward_standard {
            position += 1
        }
    }
    
    //차의 이름을 반환하는 함수
    public func getName() -> String {
        return name
    }
    
    //차의 위치값 반환하는 함수
    public func getPosition() -> Int {
        return position
    }
}
