//
//  ReelsModel.swift
//  instaclo_walid
//
//  Created by Walid on 26.02.21.
//

import Foundation


struct ReelsModel{
    
    let profile: UserProfile
    let image:String
    let reelText: String
    let numberOfLikes: Int
    let numberOfMessages: Int
    
    init(profile:UserProfile, image:String, reelText:String, numberOfLikes: Int, numberOfMessages: Int) {
        self.profile = profile
        self.image = image
        self.reelText = reelText
        self.numberOfLikes = numberOfLikes
        self.numberOfMessages = numberOfMessages
    }
}
