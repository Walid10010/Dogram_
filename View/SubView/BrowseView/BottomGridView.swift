//
//  BottomGridView.swift
//  instaclo_walid
//
//  Created by Walid on 24.02.21.
//

import SwiftUI

struct BottomGridView: View {
    
    let profileArray: [PostModel]
    let profile: UserProfile
    let movie: String

    var body: some View {
        HStack(spacing:0) {
            NavigationLink(
                destination:
                ProfileView(user: profile),
                label: {
                    Image(profileArray[5].imageName)
                     .resizable()
                    // .scaledToFit()
                        .frame(width:width/3, height:width/1.5)
                })
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
                            // .scaledToFit()
                             .frame(width:width/3, height:width/2)
                        })
                }
                }
            }

        }
        //.padding(0)
    }
    
}

struct BottomGridView_Previews: PreviewProvider {
    static var previews: some View {
        BottomGridView(profileArray: tigerArray, profile: tigerProfile, movie: "dog1")
    }
}
