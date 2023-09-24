//
//  NavBar.swift
//  BeFit
//
//  Created by Ariya Gupta on 2023-09-23.
//

import SwiftUI

enum Tabs: Int {
    case home = 0
    case challenges = 1
    case camera = 2
    case stats = 3
    case profile = 4
}

struct NavBar: View {
    
    @Binding var selectedTab: Tabs
    
    var body: some View {
        HStack (alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            
            Button{
                // switch to home
                selectedTab = .home
                
            } label: {
                
                GeometryReader { geo in
                    
                    
                    VStack (alignment: .center, spacing: 4) {
                        if selectedTab == .home {
                            Image(systemName: "house.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                        } else {
                            Image(systemName: "house")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                        }
                        Text("Home")
                            .font(.caption)

                    }
                    .frame(width: geo.size.width, height:geo.size.height)
                }
                
            }
            .foregroundColor(.black)

            Button{
                // switch to challenges
                selectedTab = .challenges
                
            } label: {
                GeometryReader { geo in

                    VStack (alignment: .center, spacing: 4) {
                        if selectedTab == .challenges {
                            Image(systemName: "trophy.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24,height: 24)
                        }
                        else{
                            Image(systemName: "trophy")
                                .resizable()
                                .scaledToFit()
                            .frame(width: 24, height: 24)}
                        Text("Challenges")
                            .font(.caption)
                    }
                    .frame(width: geo.size.width, height:geo.size.height)

                }
            }
            .foregroundColor(.black)
            
            Button{
                selectedTab = .camera
            } label: {
                GeometryReader { geo in
                    
                    VStack (alignment: .center, spacing: 4) {
                        if selectedTab == .camera {
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                        } else{
                            Image(systemName: "plus.circle")
                                .resizable()
                                .scaledToFit()
                            .frame(width: 30, height: 30)}
                    }
                    .frame(width: geo.size.width, height:geo.size.height)
                }
            }
            .foregroundColor(.black)
            
            Button{
                // switch to stats
                selectedTab = .stats
                
            } label: {
                GeometryReader { geo in
                    
                    VStack (alignment: .center, spacing: 4) {
                        if selectedTab == .stats {
                            Image(systemName: "chart.bar.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                        } else{
                            Image(systemName: "chart.bar")
                                .resizable()
                                .scaledToFit()
                            .frame(width: 24, height: 24)}
                            Text("Stats")
                                .font(.caption)
                        
                    }
                    .frame(width: geo.size.width, height:geo.size.height)
                }
            }
            .foregroundColor(.black)
            
            Button{
                // switch to profile
                selectedTab = .profile
                
            } label: {
                GeometryReader { geo in
                    
                    VStack (alignment: .center, spacing: 4) {
                        if selectedTab == .profile {
                            Image(systemName: "person.fill")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                        } else {
                            Image(systemName: "person")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                        }
                        
                        Text("Profile")
                            .font(.caption)

                    }
                    .frame(width: geo.size.width, height:geo.size.height)
                }
            }
            .foregroundColor(.black)
        }
    }
}

struct bar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar(selectedTab: .constant(.home))
    }
}
