//
//  ProfileScrollView.swift
//  instaclo_walid
//
//  Created by Walid on 25.02.21.
//

import SwiftUI

struct ProfileScrollView: View {
    let postModelArray: [PostModel]
    let startIndex: Int
    let profile: UserProfile
    var body: some View {
        GeometryReader { reader in
            ScrollView(.vertical, showsIndicators: false, content: {
                LazyVStack(spacing:60){
                    ForEach(startIndex..<postModelArray.count) { storyArrayName in
                        ZoomPost(postInfo: postModelArray[storyArrayName], user: profile, embeded: false)

                }
                }
            })
            .navigationBarTitle("Browse")
            .navigationBarTitleDisplayMode(.inline)
            .background(Color.black)
        }
    
}
    
}

struct ProfileScrollView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
        ProfileScrollView(postModelArray: tigerArray, startIndex: 2, profile: tigerProfile)
        }    }
}
