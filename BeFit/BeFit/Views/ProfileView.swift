//
//  ContentView.swift
//  BeFit
//
//  Created by Ariya Gupta on 2023-09-23.
//

import SwiftUI

struct ProfileView: View {
    @State var selectedTab: Tabs = .profile
    
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
                            Image("emmaProfile").resizable()
                                .frame(width: 50, height: 50)
                                .padding(.horizontal, 10)
                           
                            Text("emma_f").padding(5).font(.title2)
                            Spacer()
                            Image(systemName: "pencil")
                            Spacer().padding()
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                        ZStack{
                            Rectangle().foregroundColor(.white).cornerRadius(20).padding(17)
                            
                            VStack{
                                Spacer()
                                Spacer()
                                Spacer()
                                Spacer()
                                Text("Favourite progress pic")
                                    .fontWeight(.semibold)
                                    .frame(maxWidth: 325, alignment: .leading)
                                Spacer()
                                Image("emma").resizable().padding(20)
                                
                            }
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

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
