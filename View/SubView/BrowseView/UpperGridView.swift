//
//  UpperGridView.swift
//  instaclo_walid
//
//  Created by Walid on 24.02.21.
//

import SwiftUI
import UIKit

struct UpperGridView: View {
    
    
    let profileArray: [PostModel]
    let profile: UserProfile
    let movie: String
    
    
    var body: some View {
        HStack(spacing:0) {
            VStack(spacing:0) {
                HStack (spacing:0){
                    ForEach(0..<2) { index in
                        NavigationLink(
                            destination: ProfileView(user: profile),
                            label: {
                                Image(profileArray[index].imageName)
                                    .resizable()
                                    //.scaledToFit()
                                
                                       .frame(width:width/3, height:width/2)
                                      .scaledToFill()
                            })
                        
                    }
                }
                HStack(spacing:0){
                    ForEach(3..<5) { index in
                        NavigationLink(
                            destination: ProfileView(user: profile),
                            label: {
                                Image(profileArray[index].imageName)
                                    .resizable()
                             
                                    .frame(width:width/3, height:width/2)
                                   .scaledToFill()
                            })
                    }
                }
            }
            NavigationLink(
                destination: ProfileView(user: profile),
                label: {
                    Image(profileArray[6].imageName)
                        .resizable()
                        // .scaledToFit()
                        .frame(width:width/3, height:width)
                         .scaledToFill()
                })
        }
        //.padding(0)
    }
    
}

struct UpperGridView_Previews: PreviewProvider {
    static var storyArray = ["dog1", "dog2", "dog3", "dog4", "dog5"]
    
    static var previews: some View {
        Text("")
        // UpperGridView(profileArray: storyArray, movie:"dog1")
        //   .background(Color.black)
    }
}
