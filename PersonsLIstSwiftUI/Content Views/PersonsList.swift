//
//  PersonsList.swift
//  PersonsLIstSwiftUI
//
//  Created by Dmitry Shcherbakov on 24.12.2020.
//

import SwiftUI

struct PersonsList: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(destination: PersonInfo(person: person)) {
                    Text(person.fullName)
                }
            }
            .navigationBarTitle("Persons List")
        }
    }
}

struct PersonsList_Previews: PreviewProvider {
    static var previews: some View {
        PersonsList(persons: Person.getPersons())
    }
}
