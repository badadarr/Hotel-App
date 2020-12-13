//
//  Item.swift
//  Hotel Price App
//
//  Created by badar on 12/12/20.
//

import SwiftUI

// Model dan Model Data...

struct Item: Identifiable {
    
    var id = UUID().uuidString
    var name: String
    var price: String
    var image: String
}

var items = [
    
    Item(name: "Amba Hotel", price: "$100,34", image: "p1"),
    Item(name: "Connaught Hotel", price: "$603,83", image: "p3"),
]
