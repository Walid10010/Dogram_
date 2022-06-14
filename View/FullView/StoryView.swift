//
//  StoryView.swift
//  instaclo_walid
//
//  Created by Walid on 24.02.21.
//

import SwiftUI

struct StoryView: View {
    let storyArray: [String]
    let height = UIScreen.main.bounds.height

    var body: some View {

        VStack(spacing:0){
                StoryRowView(storyArray: storyArray)
                Spacer()
                ScrollView (.vertical, showsIndicators: false){
                    VStack(spacing:60){
                            ZoomPost(postInfo: pitbullProfile.postArray[0], user: pitbullProfile, embeded: false)
                                    ZoomPost(postInfo: tigerProfile.postArray[0], user: tigerProfile, embeded: false)
                                    ZoomPost(postInfo: eleProfile.postArray[0], user: eleProfile, embeded: false)
        
                        }

                    }

               // Spacer()
            
            }
            .navigationBarHidden(true)
            //.edgesIgnoringSafeArea(.bottom)

        //.listStyle(PlainListStyle())
    }
}

struct StoryView_Previews: PreviewProvider {
    static var storyArray = ["dog1", "dog2", "dog3", "dog4", "dog5"]

    static var previews: some View {
        NavigationView{
        StoryView(storyArray: storyArray)
            .background(Color.black)
    }
    }
}





