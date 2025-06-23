//
//  StocAppTests.swift
//  StocAppTests
//
//  Created by Carlos Jorge on 03/06/25.
//

import Testing
@testable import StocApp

struct StocAppTests {

    @Test func example() async throws {
        let equipament = Equipament.exemplo
        print("Equipamento:")
        print("Nome: \(equipament.nome)")                // Imprime o nome do equipamento
        print("Tipo: \(equipament.tipo.rawValue)")       // Imprime o tipo do equipamento (convertido para string)
        print("Quantidade: \(equipament.quantidade)")    // Imprime a quantidade do equipamento
        
        // Exemplo de Movimentação
        let movimentacao = Moviment.exemplo
        print("\nMovimentação:")
        print("Equipamento: \(movimentacao.equipamento.nome)")    // Imprime o nome do equipamento na movimentação
        print("Data da Retirada: \(movimentacao.data)")           // Imprime a data de retirada do equipamento
        print("Data de Entrega: \(movimentacao.dataEntrega)")     // Imprime a data de entrega prevista
        print("Responsável: \(movimentacao.responsavel)")          // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    }

}
