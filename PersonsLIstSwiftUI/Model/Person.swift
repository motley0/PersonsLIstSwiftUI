//
//  Person.swift
//  PersonsLIstSwiftUI
//
//  Created by Dmitry Shcherbakov on 24.12.2020.
//

import Foundation

struct Person: Identifiable {
    let id: Int
    
    let lastName: String
    let firstName: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(lastName) \(firstName)"
    }
}

extension Person {
    static func getPersons() -> [Person] {
        let dataManager = DataManager.shared
        
        return dataManager.lastNames.enumerated().map() {
            Person(id: $0,
                   lastName: $1,
                   firstName: dataManager.firstNames[$0],
                   phone: dataManager.phones[$0],
                   email: dataManager.emails[$0])
        }
    }
}

