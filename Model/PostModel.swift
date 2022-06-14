//
//  PostModel.swift
//  instaclo_walid
//
//  Created by Walid on 24.02.21.
//

import Foundation


struct PostModel{
    let postType: PostType
    let numberoflikes: Int
    let postText: String
    let postCreated: String
    let imageName: String
    let bio: String
    let imageIndex:Int
    
    
    init(posttype: PostType, numberoflikes:Int, postText:String, postCreated:String,  imageName:String, bio:String, imageIndex:Int) {
        self.postType = posttype
        self.numberoflikes = numberoflikes
        self.postText = postText
        self.imageName = imageName
        self.postCreated = postCreated
        self.bio = bio
        self.imageIndex = imageIndex
    
    }
}

