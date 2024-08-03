//
//  Product.swift
//  LittleElectronicShop
//
//  Created by Радэль Зубаиров on 31.07.2024.
//

import Foundation
import FirebaseFirestore

struct Product : Identifiable, Codable {
    @DocumentID var id: String? 
    var name: String
    var description: String
    var image: String
    var price: Int
}
