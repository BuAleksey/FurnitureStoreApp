//
//  CardView.swift
//  FurnitureStoreApp
//
//  Created by Buba on 06.06.2023.
//

import SwiftUI

struct CardView: View {
    let item: ModelFurniture
    @State private var isFavorite = false
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(item.title)
                .font(.system(.headline, design: .rounded))
                .foregroundColor(.black)
                
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            HStack {
                Text(item.price)
                    .font(.system(size: 15, weight: .semibold, design: .rounded))
                    .foregroundColor(.gray)
                
                Spacer()
                
                Button {
                    isFavorite.toggle()
                } label: {
                    Image(systemName: isFavorite ? "heart.fill" : "heart")
                        .foregroundColor(.black)
                }
            }
        }
        .padding()
        .background(.white)
        .frame(width: 172, height: 230)
        .cornerRadius(20)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(item: ModelFurniture(
            title: "One",
            price: "₽100",
            image: "chair"
        ))
    }
}
