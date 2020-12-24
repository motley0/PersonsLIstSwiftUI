//
//  DetailedPersonsList.swift
//  PersonsLIstSwiftUI
//
//  Created by Dmitry Shcherbakov on 24.12.2020.
//

import SwiftUI

struct DetailedPersonsList: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(persons) { person in
                    Section(header: Text("\(person.fullName)")) {
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
                }
            }
            .navigationBarTitle("Persons List")
        }
    }
}

struct DetailedPersonsList_Previews: PreviewProvider {
    static var previews: some View {
        DetailedPersonsList(persons: Person.getPersons())
    }
}
