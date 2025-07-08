//
//  Moviment.swift
//  StocApp
//
//  Created by iredefbmac_42 on 23/06/25.
//

import Foundation
import SwiftData


@Model
class Movement{
    @Attribute(.unique)
    var id: UUID
    var equipment: Equipment?
    var loanDate: Date
    var expectedReturnDate: Date
    var responsible: String
    
    
    //Inicializador da class Movement
    
    init(
        id: UUID = UUID(),  //ID automático se não for fornecido
        equipment: Equipment?, //equipamento que tem analogia com o movimento
        loanDate: Date,  //data do dia que o user fez o empréstimo
        expectedReturnDate: Date, // Dia da Devolução
        responsible: String
    ) {
        self.id = id
        self.equipment = equipment
        self.loanDate = loanDate
        self.expectedReturnDate = expectedReturnDate
        self.responsible = responsible
    }
}

