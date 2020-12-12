//
//  TabBar.swift
//  Hotel Price App
//
//  Created by badar on 12/12/20.
//

import SwiftUI

struct TabBar: View {
    @State var currentTab = "home"
    @Namespace var animation
    init() {
        
        // hiding default tab bar...
        UITabBar.appearance().isHidden = true
    }
    // safe area values...
    @State var safeArea = UIApplication.shared.windows.first?.safeAreaInsets
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            
            TabView(selection: $currentTab) {
                
                Text("Home")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[0])
                    .background(Color("bg").ignoresSafeArea())
                
                Text("Booking")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[1])
                    .background(Color("bg").ignoresSafeArea())
                
                Text("Favourites")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[2])
                    .background(Color("bg").ignoresSafeArea())
                
                Text("Settings")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[3])
                    .background(Color("bg").ignoresSafeArea())
            }
            
            // Custom Tab Bar...
            
            HStack(spacing: 35) {
                
                ForEach(tabs,id: \.self) { image in
                    
                    TabButton(image: image, selected: $currentTab, animation: animation)

                    
                }
            }
            .padding(.horizontal, 35)
            .padding(.top)
            .padding(.bottom, safeArea?.bottom == 0 ? safeArea?.bottom : 15)
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}
var tabs = ["home", "book", "suit.heart", "person"]
