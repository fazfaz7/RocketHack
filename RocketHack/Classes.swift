//
//  File.swift
//  RocketHack
//
//  Created by Adrian Faz on 15/06/24.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var unitCost: Double
}

struct ProductUnit {
    var product: Product
    var quantity: Int
}
