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
    
    func Header(title: String) -> HStack<TupleView<(Text, Spacer)>> {
        return // karena keduanya sama jadi akan membuatnya dapat digunakan kembali..
            HStack {
                
                Text(title)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(white)
                
                Spacer()
            }
    }
    
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
            
            ScrollView(.vertical, showsIndicators: false) {
                
                VStack {
                    
                    Header(title: "Recommended")
                    .padding()
                    
                    HStack {
                        
                        VStack(alignment: .leading, spacing: 6) {
                            
                            Text("Baglioni Hotel")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            HStack {
                                Text("Only Today")
                                    .foregroundColor(white)
                                
                                Text("50%")
                                    .fontWeight(.bold)
                                    .foregroundColor(.white)
                                
                                Text("off")
                                    .foregroundColor(white)
                            }
                            
                            Text("$500,23")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                        
                        Spacer(minLength: 5)
                        
                        Image("p2").resizable()
                            .frame(width: 190, height: 140)
                            .cornerRadius(20)
                        
                    }
                    .padding([.vertical, .leading])
                    .background (
                        LinearGradient(gradient: .init(colors: [Color("g1"), Color("g2")]), startPoint: .top, endPoint: .bottom)
                            .cornerRadius(25)
                            .padding(.vertical, 25)
                            .padding(.trailing, 30)
                    )
                    .padding(.horizontal)
                    
                    Header(title: "Popular Places")
                    .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        
                        HStack(spacing: 25) {
                            
                            ForEach(items) { item in
                                // Card View...
                                
                                CardView(item: item)
                            }
                        }
                        .padding()
                        .padding(.horizontal, 4)
                    }
                    
                    Header(title: "Any Visitors")
                    .padding()
                    
                    HStack {
                        
                        Image("p4").resizable()
                            .frame(width: 190, height: 140)
                            .cornerRadius(20)
                            .aspectRatio(contentMode: .fit)
                            .padding(.trailing)
                        
                        
                        VStack(alignment: .leading, spacing: 6) {
                            
                            Text("Hoxton Hotel")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Text("@Awesome Price")
                                .foregroundColor(white)
                            
                            Text("$200,23")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                        }
                        Spacer(minLength: 5)
                    }
                    .padding([.vertical, .trailing])
                    .background (
                        LinearGradient(gradient: .init(colors: [Color("g1"), Color("g2")]), startPoint: .top, endPoint: .bottom)
                            .cornerRadius(25)
                            .padding(.vertical, 25)
                            .padding(.leading, 30)
                    )
                    .padding(.horizontal)
                }
                .padding(.bottom, 100)
            }
        }
    }
}
