//
//  MainView.swift
//  FurnitureStoreApp
//
//  Created by Buba on 06.06.2023.
//

import SwiftUI

struct MainView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false) {
                header()
                
                HStack {
                    Text("Chairs")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.bold)
                        .padding(.leading)
                    
                    Spacer()
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(ModelFurniture.chairs) { chair in
                            NavigationLink {
                                DetailView(item: chair)
                            } label: {
                                CardView(item: chair)
                            }
                        }
                    }
                    .padding(.leading)
                }
                
                HStack {
                    Text("Armchairs")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.bold)
                        .padding(.leading)
                    
                    Spacer()
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(ModelFurniture.armchairs) { armchair in
                            NavigationLink {
                                DetailView(item: armchair)
                            } label: {
                                CardView(item: armchair)
                            }
                        }
                    }
                    .padding(.leading)
                }
                
                HStack {
                    Text("Office chairs")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.bold)
                        .padding(.leading)
                    
                    Spacer()
                }
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(ModelFurniture.officeChairs) { officeChair in
                            NavigationLink {
                                DetailView(item: officeChair)
                            } label: {
                                CardView(item: officeChair)
                            }
                        }
                    }
                    .padding(.leading)
                }
            }
            .background(.gray.opacity(0.2))
        }
    }
    
    @ViewBuilder
    
    private func header() -> some View {
        HStack(spacing: 18) {
            HStack {
                Image(systemName: "magnifyingglass")
                
                TextField("Search...", text: $searchText)
            }
            .frame(height: 10)
            .padding()
            .background(.white)
            .cornerRadius(10)
            
            Spacer()
            
            Button {
                print("Options tap..")
            } label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.white)
                        .frame(width: 40, height: 40)
                    Image(systemName: "slider.horizontal.3")
                        .foregroundColor(.black)
                }
            }
        }
        .padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
