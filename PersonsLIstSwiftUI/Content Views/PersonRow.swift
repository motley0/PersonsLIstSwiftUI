//
//  PersonRow.swift
//  PersonsLIstSwiftUI
//
//  Created by Dmitry Shcherbakov on 24.12.2020.
//

import SwiftUI

struct PersonRow: View {
    
    let image: ResizableImage
    let value: String
    
    var body: some View {
        HStack {
            image
            Text(value)
        }
    }
}

struct PersonRow_Previews: PreviewProvider {
    static var previews: some View {
        PersonRow(
            image: ResizableImage(imageName: "phone",
                                  width: 25,
                                  height: 25),
            value: "+79774416490"
        )
    }
}
