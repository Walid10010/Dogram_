//
//  StoryRowView.swift
//  instaclo_walid
//
//  Created by Walid on 23.02.21.
//

import SwiftUI

struct StoryRowView: View {
    var storyArray: [String]
    var body: some View {
        VStack {
            HStack{
                Text("Instagram")
                    .foregroundColor(.white)
                    .font(Font.custom("JasmineandGreentea", size: 40))
                    
                    .bold()
                Spacer()
                Image(systemName: "plus")
                    .font(.title2)
                    .foregroundColor(.white)
                Image(systemName: "heart")
                    .font(.title2)
                    .foregroundColor(.white)
                Image(systemName: "paperplane")
                    .font(.title2)
                    .foregroundColor(.white)
            }
            HStack{
                StoryRow(storyArray: storyArray)
                Spacer()
            }
            //.padding(.top, -40)
            Spacer()
        }
        .frame(height: 200, alignment: .leading)
        .background(Color.black)

    }
}

struct StoryRowView_Previews: PreviewProvider {
    static var storyArray = ["1", "tiger1", "ele1", "dog4", "dog5"]
    static var previews: some View {
        ZStack{
            Color.black
    
                    StoryRowView(storyArray: storyArray)
                    //Divider()

            
        }
        
    }
}

struct StoryRow: View {
    var storyArray: [String]
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false){
            LazyHStack(spacing:-20){
                ForEach(0..<storyArray.count) { storyArrayName in
                    let tmp_name = storyArray[storyArrayName]
                    NamedImage(imageFileName: tmp_name, width: 120, height: 120, alignment: .leading, name: tmp_name)
                }
            }
            .padding(.leading, 0)
        }
       
    }
}
