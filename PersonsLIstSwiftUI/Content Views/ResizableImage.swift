//
//  ResizableImage.swift
//  PersonsLIstSwiftUI
//
//  Created by Dmitry Shcherbakov on 24.12.2020.
//

import SwiftUI

struct ResizableImage: View {
    
    let imageName: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        Image(systemName: imageName)
            .resizable()
            .frame(width: width, height: height)
    }
}

struct ResizableImage_Previews: PreviewProvider {
    static var previews: some View {
        ResizableImage(imageName: "phone", width: 25, height: 25)
    }
}
