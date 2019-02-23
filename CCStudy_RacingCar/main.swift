//
//  main.swift
//  CCStudy_RacingCar
//
//  Created by 신동규 on 2/16/19.
//  Copyright © 2019 CCStudy. All rights reserved.
//

import Foundation
let game = Game()
print("경주할 자동차 이름을 입력력하세요 (이름은 쉼표(,)를 기준으로 구분).")
let carString = readLine()!

print("시도할 횟수는 몇 회 인가요?")
let testNum = Int(readLine()!) ?? 0

game.getCarName()
