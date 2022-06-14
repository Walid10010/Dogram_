//
//  ProfileView.swift
//  instaclo_walid
//
//  Created by Walid on 24.02.21.
//

import SwiftUI

struct ProfileView: View {
    let user: UserProfile
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack{
                ProfileInfoView(imageName: user.profileImage, posts: user.posts, follower: user.follower, following: user.following)
                BioProfile(userName: user.userName, grayInfo: user.grayInfo, bio: user.bio)
                ProfileButtonHstack()
                ProfileImageButtonStack()
                //ScrollView(.vertical, showsIndicators: false) {
                ImageGridView(postImageArray: user.postArray, size: user.postArray.count, profile: user)
                    .padding(.top, 10)
                
                // }
                Spacer()
            }
            
        }
        .navigationTitle(user.userName)
        .navigationBarItems(trailing:
                                Image(systemName: "ellipsis")
                                .font(.headline)
                                .colorInvert()
                                .padding(.trailing, 10))
        .navigationBarTitleDisplayMode(.inline)
        .background(Color.black)
        .accentColor(Color.black)
    }
    
}





struct ImageGridView: View {
    let postImageArray: [PostModel]
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    var size = 6
    let profile: UserProfile
    
    var body: some View {
        LazyVGrid(
            columns: [
                GridItem(.fixed(width/3), spacing: 0),
                GridItem(.fixed(width/3), spacing: 0),
                GridItem(.fixed(width/3), spacing: 0)
            ],
            alignment: .leading,
            spacing: 0,
            pinnedViews: [],
            content: {
                ForEach(0..<size) { storyArrayName in
                    NavigationLink(
                        destination:
                            ProfileScrollView(postModelArray: postImageArray, startIndex: storyArrayName, profile: profile),
                        label: {
                            Image(postImageArray[storyArrayName].imageName)
                                .resizable()
                                .frame(width:width/3, height:width/2)
                                .scaledToFill()
                               
                        })
                       
                    
                    
                }
            })
    }
}




struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: user1)
        // .background(Color.black)
    }
}


struct ImageSystem: View {
    let systemName: String
    var body: some View {
        Image(systemName: systemName)
            .font(.headline)
            .colorInvert()
            .padding(.trailing, 10)
    }
}

struct ProfileButton: View {
    let buttonText: String
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    var body: some View {
        Button(action: {}, label: {
            Text(buttonText)
                .bold()
                .frame(width: width/3.5, height: height*0.04, alignment: .center)
                .foregroundColor(.white)
                .cornerRadius(12)
                .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            
        })
    }
}


struct ProfileInfoView: View {
    let imageName:String
    let posts:Int
    let follower:Int
    let following:Int
    var body: some View {
        VStack{
            //Color.black
            HStack{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 4.0)
                            .foregroundColor(Color.init(red: 193/255, green: 53/255, blue: 132/255))
                        //.background(LinearGradient.blackOpacityGradient)
                    )
                    
                    .frame(width: 200, height: 200, alignment: .leading)
                    .padding(.leading, -20)
                VStack{
                    Text("\(posts)")
                        .font(.system(size: 10))
                        .bold()
                    
                    Text("Beiträge")
                        .font(.system(size: 12))
                        .bold()
                    
                }
                .padding(.leading, -10)
                
                Spacer()
                VStack{
                    Text("\(follower)")
                        .font(.system(size: 10))
                        .bold()
                    
                    Text("Follower")
                        .font(.system(size: 12))
                        .bold()
                    
                }
                Spacer()
                VStack{
                    Text("\(following)")
                        .font(.system(size: 10))
                        .bold()
                    
                    Text("Following")
                        .font(.system(size: 12))
                        .bold()
                    
                }
                Spacer()
            }
            //Spacer()
        }
        .foregroundColor(.white)
        .background(Color.black)
    }
}






struct BioProfile: View {
    let userName:String
    let grayInfo:String
    let bio: String
    var body: some View {
        VStack{
            HStack{
                Text(userName)
                    .foregroundColor(.white)
                    .bold()
                    .font(.system(size: 20))
                Spacer()
                
            }
            // .padding(.bottom, 5)
            HStack{
                Text(grayInfo)
                    .foregroundColor(.gray)
                    .bold()
                    .font(.system(size: 15))
                Spacer()
                
            }
            // .padding(.bottom, 5)
            
            HStack{
                Text(bio)
                    .foregroundColor(.white)
                    .bold()
                    .font(.system(size: 15))
                Spacer()
                
            }
        }
    }
}

struct ProfileButtonHstack: View {
    var body: some View {
        HStack {
            Spacer()
            ProfileButton(buttonText:"Following")
                .background(Color.blue)
            ProfileButton(buttonText:"Message")
            ProfileButton(buttonText:"E-Mail")
            Spacer()
            
        }
        .padding()
        .foregroundColor(.white)
    }
}

struct ProfileImageButtonStack: View {
    var body: some View {
        HStack {
            Spacer()
            ImageSystem(systemName: "square.fill")
            Spacer()
            ImageSystem(systemName: "play.rectangle")
            Spacer()
            ImageSystem(systemName: "play.tv.fill")
            Spacer()
            ImageSystem(systemName: "person.crop.square.fill")
            Spacer()
            
        }
    }
}
