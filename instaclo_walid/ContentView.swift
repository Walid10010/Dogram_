//
//  ContentView.swift
//  instaclo_walid
//
//  Created by Walid on 23.02.21.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    let storyView: [String]
    
    init(storyView: [String]) {
        self.storyView = storyView
        
        for family: String in UIFont.familyNames
        {
            print(family)
            for names: String in UIFont.fontNames(forFamilyName: family)
            {
                print("== \(names)")
            }
        }
        
        
        
        
        //UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor.black
        
    }
    var body: some View {
        
        ZStack {
            Color.black
            TabView {
                NavigationView {
                    StoryView(storyArray: self.storyView)
                        .background(Color.black)
                    //.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                    
                }
                .background(Color.black)
                
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
                NavigationView{
                    BrowseView()
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(1)
                NavigationView {
                    ScrollVideoView()
                }
                        .tabItem {
                            Image(systemName: "play")
                    }.tag(2)
                
                
                NavigationView {
                    ProfileView(user: pitbullProfile)
                }
                .tabItem {
                    Image(systemName: "person.circle.fill")
                }.tag(3)
                
            }
        }
        .edgesIgnoringSafeArea(.all)
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var storyArray = ["dog1", "dog2", "dog3", "dog4", "dog5"]
    
    static var previews: some View {
        ContentView(storyView: storyArray)
            .background(Color.black)
            .edgesIgnoringSafeArea(.all)
        
    }
}
