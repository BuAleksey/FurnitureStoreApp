//
//  ModelFurniture.swift
//  FurnitureStoreApp
//
//  Created by Buba on 06.06.2023.
//

import Foundation

struct ModelFurniture: Identifiable {
    let id = UUID().uuidString
    
    let title: String
    let price: String
    let image: String
    
    static let chairs = [
        ModelFurniture(title: "One", price: "₽100", image: "chair"),
        ModelFurniture(title: "Two", price: "₽200", image: "chair"),
        ModelFurniture(title: "Three", price: "₽300", image: "chair"),
        ModelFurniture(title: "Four", price: "₽400", image: "chair")
    ]
    
    static let armchairs = [
        ModelFurniture(title: "One", price: "₽100", image: "armchair"),
        ModelFurniture(title: "Two", price: "₽200", image: "armchair"),
        ModelFurniture(title: "Three", price: "₽300", image: "armchair"),
        ModelFurniture(title: "Four", price: "₽400", image: "armchair")
    ]
    
    static let officeChairs = [
        ModelFurniture(title: "One", price: "₽100", image: "officeChair"),
        ModelFurniture(title: "Two", price: "₽200", image: "officeChair"),
        ModelFurniture(title: "Three", price: "₽300", image: "officeChair"),
        ModelFurniture(title: "Four", price: "₽400", image: "officeChair")
    ]
}
