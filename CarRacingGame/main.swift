//
//  main.swift
//  CarRacingGame
//
//  Created by 김예은 on 16/02/2019.
//  Copyright © 2019 kyeahen. All rights reserved.
//

import Foundation

print("경주할 자동차 이름을 입력하세요.")
let carNames = readLine() ?? ""

print("시도할 횟수는 몇 회 인가요?")
let testNumber = Int(readLine()!) ?? 0

print("실행 결과")

var race = RacingGame()
race.startGame()
