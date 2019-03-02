//
//  RacingGame.swift
//  CarRacingGame
//
//  Created by 김예은 on 22/02/2019.
//  Copyright © 2019 kyeahen. All rights reserved.
//

import Foundation

public class RacingGame {
    
    private var cars: [Car] = [Car]()
    private var winnerCount: Int = 0
    
    //레이싱 게임을 실행하는 함수
    public func startGame() {
        
        //차 이름 자르기
        let carNameArray: [String] = carNames.components(separatedBy: ",")
        
        //자동차 객체 생성
        for i in 0..<carNameArray.count {
            let car = Car(name: carNameArray[i])
            cars.append(car)
        }
        
        //자동차 객체 경주 시작
        for _ in 0..<testNumber {
            checkPosition()
        }
        
        //최종 결과 출력
        getResult()
    }
    
    //차에 할당된 움직임을 체크하는 함수(전진 및 멈춤)
    public func checkPosition() {
        let randoms: RandomNumber = RandomNumber()
        
        for i in 0..<cars.count {
            let num = randoms.getRandomNumber() //해당 차에 움직임(랜덤값) 할당
            cars[i].move(value: num) //움직임 할당 및 체크
        }
    }
    
    //차의 위치를 표시하는 함수
    public func showPosition(index: Int) {
        for _ in 0..<cars[index].getPosition() {
            print("-", terminator:"")
        }
        print("\n")
    }
    
    //우승자를 구하는 함수
    public func winCar(index: Int){
        if cars[0].getPosition() == cars[index].getPosition() {
            print(cars[index].getName(), terminator:"")
            winnerCount += 1
            addComma(index: index)
        }
    }

    //우승자를 출력하는 함수
    public func getWinner() {
        cars = cars.sorted(by: {$0.getPosition() > $1.getPosition()}) //위치값이 큰 순으로 정렬
        
        for i in 0..<cars.count {
            winCar(index: i)
        }
        print("가 최종 우승하였습니다.")
    }

    //콤마를 출력하는 함수
    public func addComma(index: Int) {
        if index != winnerCount - 1 {
            print(", ", terminator:"")
        }
    }

    //실행 결과를 출력하는 함수
    public func getResult() {
        for i in 0..<cars.count {
            print("\(cars[i].getName()) : ", terminator:"")
            showPosition(index: i)
        }
        getWinner()
    }
    
}
