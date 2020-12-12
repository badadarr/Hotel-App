//
//  Home.swift
//  Hotel Price App
//
//  Created by badar on 12/12/20.
//

import SwiftUI

struct Home: View {
    var animation: Namespace.ID
    var white = Color.white.opacity(0.85)
    var body: some View {
        
        VStack {
            
            ZStack {
                
                HStack {
                    
                    Button(action: {}) {
                        
                        Image(systemName: "rectangle.grid.2x2")
                            .font(.title2)
                            .foregroundColor(white)
                    }
                    Spacer()
                    
                    Button(action: {}) {
                        
                        Image(systemName: "magnifyingglass")
                            .font(.title2)
                            .foregroundColor(white)
                    }
                }
                
                Text("Hotels")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
            .padding([.horizontal, .bottom])
            .padding(.top, 10)
            
            HStack {
                Text("Recommended")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(white)
                
                Spacer()
            }
            .padding()
        }
    }
}
