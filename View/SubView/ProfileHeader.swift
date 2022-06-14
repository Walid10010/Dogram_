//
//  ProfileHeader.swift
//  DogGram
//
//  Created by Walid on 19.02.21.
//

import SwiftUI
import UIKit

struct ProfileHeader: View {
    var body: some View {
        
        VStack(spacing:-5) {
            Title()
            ProfileInfo()
            Bio()
            HStack{
                Spacer()
                Button(action: {}, label: {
                    Text("Abonniert")
                        .foregroundColor(.white)
                    
                    
                })
                .frame(width: 150, height: 50)
                .border(Color.gray, width: 1)
                Spacer()
                Button(action: {}, label: {
                    Text("Abonniert")
                        .foregroundColor(.white)
                    
                    
                })
                .frame(width: 150, height: 50)
                .border(Color.gray, width: 1)
                
                Spacer()
            }
            .padding(.top, 20)
            Spacer()
        }
        .padding(.top, 20)
        .background(Color.black)
        //.frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
    
}

struct ProfileHeader_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeader()
            .previewLayout(.sizeThatFits)
    }
}

struct ProfileInfo: View {
    var body: some View {
        VStack{
            //Color.black
            HStack{
                Image("dog1")
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
                    Text("2000")
                        .font(.system(size: 15))
                        .bold()
                    
                    Text("Beiträge")
                        .font(.system(size: 12))
                        .bold()
                    
                }
                .padding(.leading, -10)
                
                Spacer()
                VStack{
                    Text("2000")
                        .font(.system(size: 15))
                        .bold()
                    
                    Text("Beiträge")
                        .font(.system(size: 12))
                        .bold()
                    
                }
                Spacer()
                VStack{
                    Text("2000")
                        .font(.system(size: 15))
                        .bold()
                    
                    Text("Beiträge")
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

struct Title: View {
    var body: some View {
        HStack{
            Image(systemName: "homekit")
                .font(.headline)
                .colorInvert()
                .padding(.trailing, 10)
            
            Spacer()
            Text("walid")
                .foregroundColor(.white)
                .bold()
                .font(.system(size: 25))
            Spacer()
            Image(systemName: "macpro.gen1")
                .font(.headline)
                .colorInvert()
                .padding(.trailing, 10)
            
            Image(systemName: "ellipsis")
                .font(.headline)
                .colorInvert()
                .padding(.trailing, 10)
        }
    }
}

struct Bio: View {
    var body: some View {
        VStack{
            HStack{
                Text("Walid Durani")
                    .foregroundColor(.white)
                    .bold()
                    .font(.system(size: 20))
                Spacer()
                
            }
            // .padding(.bottom, 5)
            HStack{
                Text("Person des öffenlichen Lebens")
                    .foregroundColor(.gray)
                    .bold()
                    .font(.system(size: 15))
                Spacer()
                
            }
            // .padding(.bottom, 5)
            
            HStack{
                Text("CS|Blogger")
                    .foregroundColor(.white)
                    .bold()
                    .font(.system(size: 15))
                Spacer()
                
            }
        }
    }
}
