//
//  EquipamentType.swift
//  StocApp
//
//  Created by iredefbmac_42 on 23/06/25.
//

import Foundation

enum EquipamentType: String, Codable, CaseIterable {
    case eletronico      // Equipamentos eletrônicos
    case mecanico        // Equipamentos mecânicos
    case informatica     // Equipamentos de informática
    case mobilia         // Equipamentos de mobiliário
    case outro           // Outros tipos de equipamentos
}
