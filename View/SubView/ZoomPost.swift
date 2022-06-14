//
//  ZoomPost.swift
//  DogGram
//
//  Created by Walid on 21.02.21.
//

import SwiftUI
import UIKit

struct ZoomPost: View {
    let postInfo:PostModel
    let user: UserProfile
    let embeded: Bool
    var body: some View {
        // GeometryReader { geometry in
        VStack {
            //HeaderViewSimPost(username: username, bio: bio, imageName: imageName)
            
            if postInfo.postType == PostType.storyPost{
                HeaderViewStoryPost(username: user.userName, bio: user.bio, imageName: user.profileImage, user: user)
                    .frame(height:height * 0.15)
            } else{
                HeaderViewSimPost(username: user.userName, bio: user.bio, imageName: user.profileImage)
                    .frame(height:height * 0.15)
            }
            
            Image(postInfo.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: width, height:height*0.8)
                .padding(.top, -20)
            VStack(spacing:10) {
                
                HStack {
                    Image(systemName:"heart")
                        .font(.title3)
                        .foregroundColor(.white)
                    Image(systemName:"message")
                        .font(.title3)
                        .foregroundColor(.white)
                    Spacer()
                    
                }
                HStack {
                    Text("Gefällt \(postInfo.numberoflikes) Mal")
                        .bold()
                        .font(.title3)
                        .foregroundColor(.white)
                    Spacer()
                    
                }
                
                HStack {
                    Text(user.userName)
                        .bold()
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                    Text(postInfo.postText)
                        // .bold()
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                }
                
                HStack {
                    Text(postInfo.postCreated)
                        .bold()
                        .font(.system(size: 15))
                        .foregroundColor(.gray)
                    
                    Image(systemName: "circle.fill")
                        .foregroundColor(.gray)
                        .font(.system(size: 3))
                    
                    Text("Übersetzung anzeigen")
                        .bold()
                        .font(.system(size: 15))
                        .foregroundColor(.white)
                    Spacer()
                    
                }
                
            }
            .padding(.leading, 5)
            .padding(.top, 5)
            .frame(height:height * 0.15)
            
            Spacer()
        }
        .frame(height:height, alignment: .leading)
        .padding(.top, 0)
        .background(Color.black)
        
    }
}

struct ZoomPost_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationView{
                ZoomPost(postInfo: post1, user: tigerProfile, embeded: true)
                    .background(Color.black)
                    .accentColor( .black)
                
            }
            .navigationTitle("Ähnliche Beiträge")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            NavigationView{
                ZoomPost(postInfo: post1, user: tigerProfile, embeded: true)
                    .background(Color.black)
                    .accentColor( .black)
                
            }
            .navigationTitle("Ähnliche Beiträge")
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
        }
        
    }
}

struct HeaderViewSimPost: View {
    let username: String
    let bio: String
    let imageName: String
    var body: some View {
        HStack{
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(lineWidth: 4.0)
                        .foregroundColor(Color.init(red: 193/255, green: 53/255, blue: 132/255)))
                .frame(width: 100, height: 100, alignment: .leading)
            VStack{
                HStack{
                    Text(username)
                        .bold()
                        .font(.title3)
                    Image(systemName: "circle.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 3))
                    Text("Abonnieren")
                        .bold()
                        .font(.system(size: 10))
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    Image(systemName: "ellipsis")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding(.trailing, 0)
                    
                    
                }
                HStack{
                    Text(bio)
                    Spacer()
                }
            }
            .padding(.leading, -15)
            
            Spacer()
        }
        .padding(.leading, -10)
        .foregroundColor(.white)
        
    }
    
}



struct HeaderViewStoryPost: View {
    let username: String
    let bio: String
    let imageName: String
    let user:UserProfile
    var body: some View {
        HStack{
            //VStack{
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(
                    Circle()
                        .stroke(lineWidth: 4.0)
                        .foregroundColor(Color.init(red: 193/255, green: 53/255, blue: 132/255)))
                .frame(width: 100, height: 50, alignment: .leading)
                .padding(.top, 15)
            //}
            VStack{
                NavigationLink(
                    destination:
                        ProfileView(user: user)
                        .background(Color.black),
                    label: {
                        HStack{
                            Text(username)
                                .bold()
                                .font(.title3)
                            
                            Spacer()
                            Image(systemName: "ellipsis")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding(.trailing, 0)
                            
                            
                        }
                    })
                
            }
            .padding(.leading, -35)
            
            Spacer()
        }
        .padding(.leading, -10)
        .foregroundColor(.white)
        
    }
    
}



enum PostType{
    case storyPost, simPost
}
