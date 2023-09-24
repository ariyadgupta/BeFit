//
//  BeFitApp.swift
//  BeFit
//
//  Created by Ariya Gupta on 2023-09-23.
//

import SwiftUI

@main
struct BeFitApp: App {
    @State var selectedTab: Tabs = .home

    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
