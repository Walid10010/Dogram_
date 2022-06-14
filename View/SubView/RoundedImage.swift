//
//  RoundedImage.swift
//  instaclo_walid
//
//  Created by Walid on 23.02.21.
//

import SwiftUI

struct RoundedImage: View {
    let imageFileName: String
    let width: CGFloat
    let height: CGFloat
    let alignment: Alignment
    
    var body: some View {
        Image(imageFileName)
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(lineWidth: 4.0)
                    .foregroundColor(Color.init(red: 193/255, green: 53/255, blue: 132/255)))
            .frame(width: width, height: height, alignment: alignment)    }
}

struct RoundedImage_Previews: PreviewProvider {
    static var previews: some View {
        RoundedImage(imageFileName: "dog1",
                     width: 100,
                     height: 100,
                     alignment: .center)
    }
}
