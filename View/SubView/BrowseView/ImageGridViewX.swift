//
//  ImageGridView.swift
//  instaclo_walid
//
//  Created by Walid on 24.02.21.
//

import Foundation
import UIKit
import SwiftUI



struct ImageGridViewX: View {
    let postImageArray: [PostModel]


    var body: some View {
        LazyVGrid(
            columns: [
                GridItem(.flexible()),
                GridItem(.flexible()),
                GridItem(.flexible()),
            ],
            alignment: .center,
            spacing: nil,
            pinnedViews: [],
            content: {
                ForEach(1..<postImageArray.count) { storyArrayName in
                    NavigationLink(
                        destination: Text(""),
                        label: {
                            Image(postImageArray[storyArrayName].imageName)
                                .resizable()
                                //.scaledToFit()
                          
                                .frame(width:width/3, height:0.1*height)
                                .scaledToFill()
                        })
                        

                }
        })
    }
}
