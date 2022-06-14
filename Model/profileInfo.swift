//
//  profileInfo.swift
//  instaclo_walid
//
//  Created by Walid on 24.02.21.
//
    
import Foundation


struct UserProfile {
    
    let userName:String
    let profileImage: String
    let posts: Int
    let follower: Int
    let following: Int
    let pictureArray:[String]
    let bio:String
    let grayInfo:String
    var postArray: [PostModel]
    
    init(userName:String, profileImage:String, posts:Int, follower: Int, following:Int, pictureArray:[String], bio:String, grayInfo:String, postArray:[PostModel]) {
        self.userName = userName
        self.profileImage = profileImage
        self.posts = posts
        self.follower = follower
        self.following = following
        self.pictureArray = pictureArray
        self.bio = bio
        self.grayInfo = grayInfo
        self.postArray = postArray
    }
    
    
}
