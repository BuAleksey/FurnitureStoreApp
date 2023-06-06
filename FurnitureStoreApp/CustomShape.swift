//
//  CustomShape.swift
//  FurnitureStoreApp
//
//  Created by Buba on 06.06.2023.
//

import SwiftUI

struct CustomShape: Shape {
    let corner: UIRectCorner
    let rad: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: corner,
            cornerRadii: CGSize(width: rad, height: rad)
        )
        
        return Path(path.cgPath)
    }
}
