//
//  user_collection.swift
//  instaclo_walid
//
//  Created by Walid on 24.02.21.
//
import UIKit
import Foundation

let storyArray = ["dog1", "dog2", "dog3", "dog4", "dog5"]

let post1 = PostModel(posttype: .storyPost, numberoflikes: 287689, postText: "Happy Coding", postCreated: "7. Februar", imageName: "dog3", bio: "Alone", imageIndex: 0)

let postArray1 = [post1]

let user1 = UserProfile(userName:"Pitbull", profileImage: "2", posts: 234578, follower: 1000, following: 250000, pictureArray: storyArray, bio: "Best DOG in the World!", grayInfo: "Super DOG", postArray: postArray1)



let width = UIScreen.main.bounds.width
let height = UIScreen.main.bounds.height


let storyArray1 = ["pitbull1", "dog2", "dog3", "dog4", "dog5"]

func getByNameArray(name:String, bio: String) -> [PostModel] {
    var arr: [PostModel] = []
    for i in 3...10 {
        let randomDate = getRandomDate()
        let randomLikes = Int.random(in: 0..<10000000)
       // let randomFollwing = Int.random(in: 0..<10000000)
        let postModel = PostModel(posttype: .storyPost, numberoflikes: randomLikes, postText: name + "SUPER!", postCreated: randomDate!, imageName: "\(name)\(i)", bio: bio, imageIndex: i)
        arr.append(postModel)
    }
    return arr
}

func getRandomDate() -> String? {
    let date = Date()
    let calendar = Calendar.current
    var dateComponents = calendar.dateComponents([.year, .month, .day], from: date)
    guard
        let days = calendar.range(of: .day, in: .month, for: date),
        let randomDay = days.randomElement()
    else {
            return "2020-01-01"
    }
    dateComponents.setValue(randomDay, for: .day)
    let dateFormatterGet = DateFormatter()
    dateFormatterGet.dateFormat = "yyyy MMM dd"
    let date1: String = dateFormatterGet.string(from: calendar.date(from: dateComponents)!)
    return date1
}



let tigerArray = getByNameArray(name: "tiger", bio: "King of the jungle")
let eleArray = getByNameArray(name: "ele", bio: "Big guy")
let pitbullArray = getByNameArray(name: "pitbull", bio: "Super dog!")

let tigerProfile = UserProfile(userName:"Tiger", profileImage: "tiger1", posts: 1111228, follower: 999990, following: 3509000, pictureArray: storyArray, bio: "King of the jungle", grayInfo: "KING", postArray: tigerArray)
let eleProfile = UserProfile(userName:"Ele", profileImage: "ele1", posts: 1128, follower: 9990, following: 3500, pictureArray: storyArray, bio: "Big guy", grayInfo: "Always eating", postArray: eleArray)
let pitbullProfile = UserProfile(userName: "Pitbull", profileImage: "pitbull1", posts: 111, follower: 9990000, following: 120, pictureArray: storyArray, bio: "Super Dog!", grayInfo: "Sleeping", postArray: pitbullArray)

let userArray = [user1, tigerProfile, eleProfile]

let tigerReelModel = ReelsModel(profile: tigerProfile, image:"tiger2", reelText: "Tiger are beautiful", numberOfLikes: 986, numberOfMessages: 719)

let pitbullReelModel = ReelsModel(profile: pitbullProfile, image: "pitbull9", reelText: "Pitbull are cute", numberOfLikes: 167, numberOfMessages: 61)


