//
//  RacingGame.swift
//  CarRacingGame
//
//  Created by 김예은 on 22/02/2019.
//  Copyright © 2019 kyeahen. All rights reserved.
//

import Foundation

public class RacingGame{
    
    private var cars: Car
    private var randoms: RandomNumber
    
    private var carArray = [Int]() //랜덤값 저장 배열
    private var positionArray = [Int]() //전진값 저장 배열
    
    public init() {
        self.cars = Car()
        self.randoms = RandomNumber()
        self.carArray = [Int](repeating: 0, count: carNumber)
        self.positionArray = [Int](repeating: 0, count: carNumber)
    }
    
    //레이싱게임을 시작하는 함수
    public func startRace() {
        for _ in 0..<testNumber {
            checkPosition()
        }
        getResult()
    }
    
    //차의 위치를 체크하는 함수(전진 및 멈춤)
    public func checkPosition() {
        for i in 0..<carNumber {
            carArray[i] = randoms.getRandomNumber()
            cars.move(value: carArray[i])
            positionArray[i] = cars.getPosition()
        }
    }
    
    //각각의 차의 위치를 표시하는 함수
    public func showPosition(index: Int) {
        for _ in 0..<positionArray[index] {
            print("-", terminator:"")
        }
        print("\n")
    }
    
    //실행 결과를 출력하는 함수
    public func getResult() {
        for i in 0..<carNumber {
            showPosition(index: i)
        }
        print(positionArray)
    }
}
