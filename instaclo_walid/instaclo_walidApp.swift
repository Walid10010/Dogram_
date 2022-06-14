//
//  instaclo_walidApp.swift
//  instaclo_walid
//
//  Created by Walid on 23.02.21.
//

import SwiftUI

@main
struct instaclo_walidApp: App {
    let storyArray = ["pitbull1", "tiger1", "ele1"]
    var body: some Scene {
        WindowGroup {
            ContentView(storyView: storyArray)
        }
    }
}
