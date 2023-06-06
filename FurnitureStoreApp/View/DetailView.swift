//
//  DetailView.swift
//  FurnitureStoreApp
//
//  Created by Buba on 06.06.2023.
//

import SwiftUI

struct DetailView: View {
    @State private var count = 0
    let item: ModelFurniture
    
    var body: some View {
        ZStack {
            VStack {
                
                Spacer()
                
                Image(item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                detail()
            }
        }
        .ignoresSafeArea(.all)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray.opacity(0.2))
    }
    
    @ViewBuilder
    private func detail() -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .foregroundColor(.white)
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text(item.title)
                            .font(.system(.title, design: .rounded))
                            .fontWeight(.bold)
                        VStack {
                            Text("Size: 75/50/60")
                            Text("Weight: 15kg")
                        }
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    }
                    
                    Spacer()
                    
                    VStack {
                        HStack {
                            ForEach(1..<5) { _ in
                                Image(systemName: "star.fill")
                            }
                            Image(systemName: "star")
                        }
                        Text("143 reviews")
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
                .padding()
                
                HStack {
                    Text(item.price)
                        .font(.system(.title2, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10)
                            .overlay {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.gray, lineWidth: 2)
                            }
                            .foregroundColor(.clear)
                        
                        HStack {
                            Button {
                                count -= 1
                            } label: {
                                Text("-")
                                    .foregroundColor(.black)
                            }
                            
                            Text(String(count))
                            
                            Button {
                                count += 1
                            } label: {
                                Text("+")
                                    .foregroundColor(.black)
                            }
                        }
                        .font(.title3)
                        .foregroundColor(.gray)
                    }
                    
                    Button {
                        print("Added to your cart..")
                    } label: {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(.black)
                            Text("Cart")
                                .foregroundColor(.white)
                        }
                    }
                }
                .frame(width: .infinity, height: 60)
                .padding([.leading, .trailing, .bottom])
            }
        }
        .frame(height: 230)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: ModelFurniture(
            title: "One",
            price: "₽100",
            image: "chair"
        ))
    }
}

