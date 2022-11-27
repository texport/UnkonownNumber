//
//  main.swift
//  UnkonownNumber
//
//  Created by Sergey Ivanov on 19.11.2022.
//

import Foundation


var answerHuman: String?
var isTrue = false

repeat {
    print("Вы хотите сыграть в игру отгадай число, если хотите, то напишите 'Новая игра' или напишите 'Выход' если хотите выйти")
    answerHuman = readLine()
    if answerHuman!.contains("Новая игра") {
        startGame()
    } else if answerHuman!.contains("Выход") {
        isTrue = true
    } else {
        print("Вы ввели что то не то, попробуйте снова")
    }
} while !isTrue

func startGame() {
    var isWin = false
    let randomNumber = UInt8.random(in: 1...250)
    
    print("Компьютер случайным образом загадал число. Вам требуется отгадать его.")
    print("Введите вариант от 1 до 250 и нажмите Enter.")
    
    repeat {
        guard let userNumber = UInt8(readLine() ?? "") else {
            print("Вы ввели некорректное число. Попробуйте снова")
            continue
        }
        if userNumber < randomNumber {
            print("Ваш вариант меньше заданного числа")
        } else if userNumber > randomNumber {
            print("Ваш вариант больше заданного числа")
        } else {
            print("Вы угадали")
            isWin = true
        }
    } while !isWin
}
