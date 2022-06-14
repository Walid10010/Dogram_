//
//  NamedImage.swift
//  instaclo_walid
//
//  Created by Walid on 23.02.21.
//

import SwiftUI

struct NamedImage: View {
    let imageFileName: String
    let width: CGFloat
    let height: CGFloat
    let alignment: Alignment
    let name: String
    var body: some View {
        VStack (spacing: -15){
            RoundedImage(imageFileName: imageFileName, width: width, height: height, alignment: alignment)
            Text(name)
                .foregroundColor(.white)
        }
    }
}

struct NamedImage_Previews: PreviewProvider {
    static var previews: some View {
        ZStack{
            Color.black
          NamedImage(imageFileName: "dog1",
                     width: 150,
                     height: 150,
                     alignment: .center,
                     name: "DOG")
    }
        
    }
}
