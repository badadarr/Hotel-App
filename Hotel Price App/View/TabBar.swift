//
//  TabBar.swift
//  Hotel Price App
//
//  Created by badar on 12/12/20.
//

import SwiftUI

struct TabBar: View {
    @State var currentTab = "house"
    @Namespace var animation
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
            
            HStack(spacing: 0) {
                
                ForEach(tabs,id: \.self) { image in
                    
                    TabButton(image: image, selected: $currentTab, animation: animation)
                    
                    if image != tabs.last{Spacer(minLength: 0)}
                    
                }
            }
        }
    }
}
var tabs = ["house", "book", "suit.heart", "person"]
