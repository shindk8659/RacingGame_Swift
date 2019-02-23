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
    
    private var cars = Car()
    private var Race = RacingGame()
    private var Randoms = RandomNumber()

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    //전진, 후진 값을 테스트하는 함수
    func testPositionCheck() {
        //given
        let expectedValue: Int = 0
        
        //when
        cars.move(value: 0)
        let testingValue: Int = cars.getPosition()

        //then
        XCTAssertEqual(expectedValue, testingValue, "전진값이 아닙니다.")
    }
    
    func test() {
        let expectedArr:
    }
}
