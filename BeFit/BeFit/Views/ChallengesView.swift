//
//  ChallengesView.swift
//  BeFit
//
//  Created by Ariya Gupta on 2023-09-24.
//

import SwiftUI

struct ChallengesView: View {
    @State var selectedTab: Tabs = .challenges

    var body: some View {
        VStack{
            
            NavBar(selectedTab: $selectedTab)
                .frame(alignment: .bottom)
                .frame(height: 50.0)
        }
    }
}

struct ChallengesView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengesView()
    }
}
