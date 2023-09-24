//
//  StatsView.swift
//  BeFit
//
//  Created by Ariya Gupta on 2023-09-24.
//

import SwiftUI

struct StatsView: View {
    @State var selectedTab: Tabs = .stats

    var body: some View {
        VStack{
            
            NavBar(selectedTab: $selectedTab)
                .frame(alignment: .bottom)
                .frame(height: 50.0)
        }
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
    }
}
