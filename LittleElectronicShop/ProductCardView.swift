//
//  ProductCardView.swift
//  LittleElectronicShop
//
//  Created by Радэль Зубаиров on 01.08.2024.
//

import Foundation
import SwiftUI

struct ProductCardView: View {
    let product: Product
    var body: some View {
        GeometryReader{ geo in
            let size = geo.size
            
            ZStack(alignment: .bottom){
                ZStack(alignment: .topTrailing){
                    CardImageView(urlString: product.image, width: size.width, height: size.height)
                }
                VStack(alignment: .leading){
                    Text(product.name)
                        .font(.title2)
                    Text("\(product.price)")
                        .font(.title3)
                }
                .padding(10)
                .frame(maxWidth: .infinity,alignment: .leading)
                .background(.background.opacity(0.5))
                .cornerRadius(10)
                .padding(10)
            }
        }
        .frame(height: UIScreen.main.bounds.width * 0.7)
        .background(.background.opacity(0.5))
        .padding(10)
    }
}
#Preview {
    ProductCardView(
        product: Product(
            name: "Name", description: "Descriptionwfnwefiwuefbwiefbibfisbfbues iufbsibdfibei ubsifbsib sebfisubdifb ieubsibdfib iesbfisbudfieb usbd bubfs ibidbf ieub ib iubfiu bis", image: "https://firebasestorage.googleapis.com/v0/b/littleelectronicshopdb.appspot.com/o/appleIphone11.jpeg?alt=media&token=3206519c-f0cc-4669-8471-2da26245cd00", price: 1)
    )
    
}
