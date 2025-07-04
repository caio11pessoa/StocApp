//
//  Moviment.swift
//  StocApp
//
//  Created by iredefbmac_42 on 23/06/25.
//

import Foundation

// Modelo que representa uma movimentação de equipamento
struct Moviment: Identifiable, Codable {
    let id: UUID                           // Identificador único da movimentação
    var equipamento: Equipament           // Equipamento que foi movimentado
    var data: Date                         // Data da retirada do equipamento
    var dataEntrega: Date                  // Data prevista para a devolução do equipamento
    var responsavel: String                // Nome do responsável pela movimentação

    /// Exemplo mockado para testes
    static let exemplo = Moviment(
        equipamento: Equipament.exemplo,  // Equipamento mockado como exemplo
        data: Date(),                      // Data atual como data de retirada
        dataEntrega: Calendar.current.date(byAdding: .day, value: 7, to: Date())!, // Data de entrega prevista para 7 dias após a retirada
        responsavel: "Rafael e Pedro Henrique"          // Nome do responsável pela movimentação
    )

    /// Inicia a struct Movimentacao
    init(id: UUID = UUID(), equipamento: Equipament, data: Date, dataEntrega: Date, responsavel: String) {
        self.id = id
        self.equipamento = equipamento
        self.data = data
        self.dataEntrega = dataEntrega
        self.responsavel = responsavel
    }
}
