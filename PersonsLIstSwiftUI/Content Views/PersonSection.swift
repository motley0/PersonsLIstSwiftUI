//
//  PersonSection.swift
//  PersonsLIstSwiftUI
//
//  Created by Dmitry Shcherbakov on 24.12.2020.
//

import SwiftUI

struct PersonSection: View {
    
    let person: Person
    let header: AnyView
    
    var body: some View {
        Section(header: header) {
            PersonRow(
                image: ResizableImage(imageName: "phone",
                                      width: 25,
                                      height: 25),
                value: person.phone)
            PersonRow(
                image: ResizableImage(imageName: "envelope",
                                      width: 28,
                                      height: 25),
                value: person.email)
        }
        .textCase(nil)
    }
}

struct PersonSection_Previews: PreviewProvider {
    static var previews: some View {
        let person = Person.getPersons()[0]
        PersonSection(person: person,
                      header: AnyView(Text("\(person.fullName)")))
    }
}
