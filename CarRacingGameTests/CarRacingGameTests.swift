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
    
    func testPerformanceExample() {
        
        let expectedValue:Int  = 5
        var checkValue:Bool = false
        
        if .moveCheck(random: expectedValue) == "-" {
            checkValue = true
            
        }
        else {
            checkValue = false
        }
        XCTAssertTrue(checkValue, "전진값이 아닙니다.")
    }
    
}
