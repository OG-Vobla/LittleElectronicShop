//
//  ContentView.swift
//  LittleElectronicShop
//
//  Created by Радэль Зубаиров on 31.07.2024.
//

import SwiftUI
import FirebaseFirestore

struct MainView: View {
    
    @FirestoreQuery (collectionPath: "products") var products: [Product]
    var columns = Array(repeating: GridItem(), count: 2)
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false){
                LazyVGrid(columns: columns, content: {
                    ForEach(products){ product in
                        ProductCardView(product: product)
                        ProductCardView(product: product)
                    }
                })
            }
            //NavigationBar
            .navigationTitle("Products")
                .toolbar{
                    ToolbarItem(placement: .topBarLeading){
                        NavigationLink(destination: FavoriteView()){
                            Image(systemName: "heart.fill")
                                .font(.title2)
                        }
                        .buttonStyle(.plain)
                    }
                    ToolbarItem(placement: .topBarTrailing){
                        NavigationLink(destination: CartView()){
                            Image(systemName: "cart.fill")
                                .font(.title2)
                        }
                        .buttonStyle(.plain)
                    }
                }
        }
    }
}

#Preview {
    MainView()
}
