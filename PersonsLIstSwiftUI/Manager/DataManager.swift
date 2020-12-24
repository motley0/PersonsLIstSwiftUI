//
//  DataManager.swift
//  PersonsLIstSwiftUI
//
//  Created by Dmitry Shcherbakov on 24.12.2020.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    var lastNames = [
        "Иван",
        "Иосиф",
        "Богдан",
        "Артем",
        "Варфоломей",
        "Сергей",
        "Руслан",
        "Леонид",
        "Алексей",
        "Бронислав"
    ]
    
    var firstNames = [
        "Якимов",
        "Пищальников",
        "Холодов",
        "Меледин",
        "Веточкин",
        "Дёгтин",
        "Аршавин",
        "Степашин",
        "Ивкин",
        "Мосяков"
    ]
    
    var phones = [
        "+7(495)803-92-04",
        "+7(495)715-25-07",
        "+7(495)782-04-16",
        "+7(495)819-69-58",
        "+7(495)627-83-15",
        "+7(495)202-81-01",
        "+7(495)939-35-67",
        "+7(495)860-72-95",
        "+7(495)138-44-35",
        "+7(495)485-68-75"
    ]
    
    var emails = [
        "44dc1ffm@yandex.ru",
        "5ybwi@mail.ru",
        "pvvxl@gmail.com",
        "kc29hc0e@yandex.ru",
        "myrfqpb@mail.ru",
        "copaa6@gmail.com",
        "n4zc9kz@yandex.ru",
        "q4aptu@mail.ru",
        "xl9bc5@gmail.com",
        "ahbg@yandex.ru"
    ]
    
    private func shuffleData() {
        lastNames.shuffle()
        firstNames.shuffle()
        phones.shuffle()
        emails.shuffle()
    }
    
    private init() {
        shuffleData()
    }
}

