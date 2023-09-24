//
//  HomeView.swift
//  BeFit
//
//  Created by Ariya Gupta on 2023-09-24.
//

import SwiftUI

struct HomeView: View {
    @State var selectedTab: Tabs = .home
    
    var body: some View {
        VStack {
            ZStack {
                Color(red: 0.9411764705882353, green: 0.9450980392156862, blue: 0.9411764705882353).ignoresSafeArea()
                
                VStack {
                    Text("BeFit.")
                        .font(.largeTitle).fontWeight(.bold)
                    
                    VStack {
                        
                        HStack {
                            Spacer()
                            Spacer()
            // CHANGE IMAGE & USERNAME
                            Image("emmaProfile").resizable()
                                .frame(width: 50, height: 50)
                                .padding(.horizontal, 10)
                            VStack{
                                Text("username").font(.title2)
                                Text("Today at 10:27 am").font(.caption2)
                            }
                            Spacer().padding()
                            
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ZStack{
                            Rectangle().foregroundColor(.white).cornerRadius(20).padding(17)
                // CHANGE IMAGE
                                Image("emma").resizable().padding(20)
                        }
                        
                        ZStack {
                            Rectangle()
                                .frame(width: 360, height: 60)
                                .foregroundColor(.white)
                                .cornerRadius(20)
                            Text("My favourite muscle group to workout is:")
                                .fontWeight(.semibold)
                                .frame(maxWidth: 325, alignment: .leading)
                        }
                        
                    }
                }
            }.foregroundColor(.black)
            NavBar(selectedTab: $selectedTab)
                .frame(alignment: .bottom)
                .frame(height: 50.0)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
