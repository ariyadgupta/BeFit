//
//  CameraView.swift
//  BeFit
//
//  Created by Ariya Gupta on 2023-09-24.
//

import SwiftUI

struct CameraView: View {
    @State var selectedTab: Tabs = .camera

    var body: some View {
        VStack{
            
            NavBar(selectedTab: $selectedTab)
                .frame(alignment: .bottom)
                .frame(height: 50.0)
        }
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
