//
//  main.swift
//  CarRacingGame
//
//  Created by 김예은 on 16/02/2019.
//  Copyright © 2019 kyeahen. All rights reserved.
//

import Foundation

print("자동차 대수는 몇 대 인가요?")
let carNumber = Int(readLine()!) ?? 0

print("시도할 횟수는 몇 회 인가요?")
let testNumber = Int(readLine()!) ?? 0

print("실행 결과")

var race = RacingGame()
race.startRace()
