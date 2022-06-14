//
//  BrowseView.swift
//  instaclo_walid
//
//  Created by Walid on 24.02.21.
//

import SwiftUI

struct BrowseView: View {

    var body: some View {
        GeometryReader { geometry in
        ScrollView(){
            LazyVStack(spacing:0){
                UpperGridView(profileArray: pitbullArray, profile: pitbullProfile, movie: "dog1")
                ImageGridView(postImageArray: eleArray, profile: eleProfile)
                BottomGridView(profileArray: tigerArray, profile: tigerProfile, movie: "dog2")
            }

        }
        }
        .background(Color.black)
        .navigationBarHidden(true)

    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}
