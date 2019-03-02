//
//  CarRacingGameTests.swift
//  CarRacingGameTests
//
//  Created by 김예은 on 16/02/2019.
//  Copyright © 2019 kyeahen. All rights reserved.
//

import XCTest
@testable import CarRacingGame

class CarRacingGameTests: XCTestCase {
    
    private var cars = [Car]()
    private var Race = RacingGame()
    private var Randoms = RandomNumber()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    //랜덤값으로 차 위치값 체크하는 테스트 함수
    func testPositionCheck() {
        
        let car1 = Car(name: "aa")
        cars.append(car1)
        
        let randomValue: Int = 3
        let expectedValue: Int = 1
    
        cars[0].move(value: randomValue)
        XCTAssertEqual(expectedValue, cars[0].getPosition(), "랜덤 값에 맞는 위치값이 아닙니다.")
    }
    
    
}
