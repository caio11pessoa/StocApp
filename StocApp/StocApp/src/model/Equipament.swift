//
//  Equipament.swift
//  StocApp
//
//  Created by iredefbmac_42 on 23/06/25.
//

import Foundation

/// Modelo para representar um Equipamento
struct Equipament: Identifiable, Codable {
    let id: UUID                      // Identificador único do equipamento
    var nome: String                  // Nome do equipamento
    var tipo: EquipamentType         // Tipo ou categoria do equipamento
    var quantidade: Int               // Quantidade disponível do equipamento

    /// Exemplo mockado para testes do Equipamento
    static let exemplo = Equipament(
        nome: "Notebook",              // Nome do equipamento
        tipo: .informatica,            // Tipo do equipamento
        quantidade: 5                  // Quantidade do equipamento
    )

    /// Inicia a struct Equipamento
    init(id: UUID = UUID(), nome: String, tipo: EquipamentType, quantidade: Int) {
        self.id = id
        self.nome = nome
        self.tipo = tipo
        self.quantidade = quantidade
    }
}
