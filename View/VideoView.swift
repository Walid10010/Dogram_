//
//  VideoView.swift
//  instaclo_walid
//
//  Created by Walid on 25.02.21.
//

import SwiftUI

struct VideoView: View {
    
    let reelModel:ReelsModel

    
    var body: some View {
                
        ZStack{
            //Color.black
            VStack {
                Image(reelModel.image)
                    .resizable()

                Spacer()
            }
            LinearGradient.blackOpacityGradient
            VStack {
                Spacer()
                HStack{
                    Spacer()
                    VStack(spacing:15){
                        Image(systemName: "heart")
                        Text("\(reelModel.numberOfLikes)Tsd.")
                    Image(systemName: "bubble.left.and.bubble.right")
                    Text("\(reelModel.numberOfMessages)")
                        .font(.system(size: 15))
                    Image(systemName: "ellipsis")
                    }
                }
                   .font(.headline)
                   .foregroundColor(.white)

            }
                .padding(.bottom, 30)
            VStack {
                Spacer()
                HStack{
                    Text("Reels")
                    Spacer()
                    Image(systemName: "camera")
                }
                  .font(.title)
                  .padding(.horizontal)
                 .foregroundColor(.white)
               Spacer()
               Spacer()
               Spacer()
               Spacer()
               Spacer()
               //Spacer()
                HStack(spacing:10){
                    RoundedImage(imageFileName: reelModel.profile.profileImage, width: 50, height: 50, alignment: .leading)
                        //.lineSpacing(0)
                    NavigationLink(
                        destination: ProfileView(user: reelModel.profile),
                        label: {
                            Text(reelModel.profile.userName)
                            
                        })
                   
                    Image(systemName: "circle.fill")
                         .resizable()
                        .scaledToFit()
                        .frame(height:5)
                    Text("Following")
                        .bold()
                    Spacer()
                }
                .foregroundColor(.white)
                HStack{
                    Text(reelModel.reelText)
                    .foregroundColor(.white)
                    .frame(width: width*0.7, alignment: .leading)
                    Spacer()
                }
                    
                Spacer()
            }

        }
        .frame(height:height)
        .background(LinearGradient.blackOpacityGradient)

        .edgesIgnoringSafeArea(.top)

    }
}

struct VideoView_Previews: PreviewProvider {
    static var previews: some View {
        VideoView(reelModel: tigerReelModel)
    }
}


extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.8)]),
        startPoint: .top,
        endPoint: .bottom
    )
}
