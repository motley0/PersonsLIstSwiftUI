//
//  PersonInfo.swift
//  PersonsLIstSwiftUI
//
//  Created by Dmitry Shcherbakov on 24.12.2020.
//

import SwiftUI

struct PersonInfo: View {
    
    let person: Person
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
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
                Spacer()
            }
            .padding()
            Spacer()
        }
        .navigationBarTitle(person.fullName)
    }
}

struct PersonInfo_Previews: PreviewProvider {
    static var previews: some View {
        PersonInfo(person: Person.getPersons()[0])
    }
}
