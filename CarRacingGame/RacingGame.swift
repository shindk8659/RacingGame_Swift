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
    private var winners: Winner
    
    private var carArray: [Int] //랜덤값 저장 배열
    private var positionArray: [Int] //위치값 저장 배열
    private var carNameArray: [String] //자동차 이름 저장 배열
    private var winnerArray: [String] //우승자 저장 배열
    
    public init() {
        self.cars = Car()
        self.randoms = RandomNumber()
        self.winners = Winner()
        
        self.carArray = [Int]()
        self.positionArray = [Int]()
        self.carNameArray = [String]()
        self.winnerArray = [String]()
    }
    
    //레이싱게임을 시작하는 함수
    public func startRace() {
        cars.setCars(names: carNames)
        
        for _ in 0..<testNumber {
            checkPosition(count: cars.getCarCount())
        }
        getResult(count: cars.getCarCount())
    }
    
    //차에 할당된 움직임을 체크하는 함수(전진 및 멈춤)
    public func checkPosition(count: Int) {
        carArray = [Int](repeating: 0, count: count)
        positionArray = [Int](repeating: 0, count: count)
        
        for i in 0..<count {
            carArray[i] = randoms.getRandomNumber() //해당 차에 움직임(랜덤값) 할당
            cars.move(value: carArray[i]) //전진 및 멈춤 체크
            positionArray[i] = cars.getPosition() //해당 차의 위치값을 배열에 저장
        }
    }
    
    //차의 위치를 표시하는 함수
    public func showPosition(index: Int) {
        for _ in 0..<positionArray[index] {
            print("-", terminator:"")
        }
        print("\n")
    }
    
    //우승자를 구하는 함수
    public func winCar(index: Int) {
        if positionArray.max() == positionArray[index] {
            winnerArray.append(carNameArray[index])
        }
    }

    //우승자를 출력하는 함수
    public func getWinner() {
        for i in 0..<winnerArray.count {
            print(winnerArray[i], terminator:"")
            addComma(index: i)
        }
        print("가 최종 우승하였습니다.")
    }
    
    //콤마를 출력하는 함수
    public func addComma(index: Int) {
        if index != winnerArray.count - 1 {
            print(", ", terminator:"")
        }
    }
    
    //실행 결과를 출력하는 함수
    public func getResult(count: Int) {
        carNameArray = cars.getCars() //자동차 이름 가져오기
        
        for i in 0..<count {
            print("\(carNameArray[i]) : ", terminator:"")
            showPosition(index: i)
            winCar(index: i) //우승자 구하기
        }
        print(positionArray)
        getWinner() //우승자 출력
    }
}
