//
//  ScrollVideoView.swift
//  instaclo_walid
//
//  Created by Walid on 26.02.21.
//

import SwiftUI

struct ScrollVideoView: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false)  {
            VStack(spacing:0){
                VideoView(reelModel: tigerReelModel)
                VideoView(reelModel: pitbullReelModel)

            }
        }
        .navigationBarHidden(true)
        .navigationBarTitleDisplayMode(.inline)

    }
}

struct ScrollVideoView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollVideoView()
    }
}
