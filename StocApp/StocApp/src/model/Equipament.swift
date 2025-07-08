//
//  Equipament.swift
//  StocApp
//
//  Created by iredefbmac_42 on 23/06/25.
//

import Foundation
import SwiftData

@Model
class Equipment{
    @Attribute(.unique)
    var id: UUID
    var name: String
    var type: String
    var quantity: Int
    var idescription: String
    var image: String
    
    init(
        id: UUID = UUID(),
        name: String,
        type: String,
        quantity: Int,
        idescription: String,
        image: String
    ) {
        self.id = id
        self.name = name
        self.type = type
        self.quantity = quantity
        self.idescription = idescription
        self.image = image
    }
    
    static let example = Equipment(
        name: "Mouse",
        type: "Informatics",
        quantity: 5,
        idescription: "Equipament used to perform actions on the screen",
        image: "mouse_image"
        
        
        
    )
    
}
