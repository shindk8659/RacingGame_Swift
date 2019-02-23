//
//  CarRacingGameTests.swift
//  CarRacingGameTests
//
//  Created by 신동규 on 2/16/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import XCTest
@testable import CCStudy_RacingCar

class CarRacingGameTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() {
        
    }
    
    func CarTest() {
        let car1 = Car.init(name: "Dongkyu", distance: "---")
        let car2 = Car.init(name: "Dong", distance: "--")
        let car3 = Car.init(name: "kyu", distance: "-")
        
        let carArray:Array<Car> = [car1,car2,car3]
        
        let game = Game()
        game.resultRanking(raceResult: carArray)
        
        
        if .moveCheck(random: expectedValue) == "-" {
            checkValue = true
            
        }
        else {
            checkValue = false
        }
        XCTAssertTrue(checkValue, "전진값이 아닙니다.")
    
    }
    
}
