//
//  main.swift
//  CCStudy_RacingCar
//
//  Created by 신동규 on 2/16/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation

print("자동차 대수는 몇 대 인가요?")
let carNum = Int(readLine()!) ?? 0

print("시도할 횟수는 몇 회 인가요?")
let testNum = Int(readLine()!) ?? 0

let carRacingGame = CarRacingGame()

carRacingGame.outputResult()
