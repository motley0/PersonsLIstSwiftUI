//
//  PersonInfoRow.swift
//  PersonsLIstSwiftUI
//
//  Created by Dmitry Shcherbakov on 24.12.2020.
//

import SwiftUI

struct PersonInfoRow: View {
    
    @State private var isPresented = false
    
    let person: Person
    
    var body: some View {
        Button(action: { isPresented.toggle() }) {
            Text(person.fullName)
                .sheet(isPresented: $isPresented) {
                    PersonInfo(person: person)
                }
        }
        
    }
}

struct PersonInfoRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonInfoRow(person: Person.getPersons()[0])
    }
}
