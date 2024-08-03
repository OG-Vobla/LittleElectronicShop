//
//  CardImageView.swift
//  LittleElectronicShop
//
//  Created by Радэль Зубаиров on 02.08.2024.
//

import SwiftUI

struct CardImageView: View {
    let urlString: String
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        if let url = URL(string: urlString){
            AsyncImage(url: url) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: width, height: height)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            } placeholder: {
                ProgressView()
                    .frame(width: width, height: height)
            }
        }
    }
}
