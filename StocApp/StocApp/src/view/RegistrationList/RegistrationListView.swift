//
//  RegistrationList.swift
//  StocApp
//
//  Created by iredefbmac_41 on 23/06/25.
//

import SwiftUI

class EquipmentStub: Identifiable{
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
    
    static let example = EquipmentStub(
        name: "Mouse",
        type: "Informatics",
        quantity: 5,
        idescription: "Equipament used to perform actions on the screen",
        image: "mouse_image"
        
        
        
    )
    
}

struct MovimentStub: Identifiable{
    var id: UUID
    var equipment: EquipmentStub?
    var loanDate: Date
    var expectedReturnDate: Date
    var responsible: String
    
    
    //Inicializador da class Movement
    
    init(
        id: UUID = UUID(),  //ID automático se não for fornecido
        equipment: EquipmentStub?, //equipamento que tem analogia com o movimento
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
    static var exemplo: MovimentStub {
        return .init(
            equipment: EquipmentStub.example,
            loanDate: Date(),
            expectedReturnDate: Date(),
            responsible: "")
    }
}
struct RegistrationListView: View {
    //    var registers: [Moviment] = [.exemplo, .exemplo, .exemplo, .exemplo]
    var registers: [MovimentStub] = [.exemplo, .exemplo, .exemplo, .exemplo, .exemplo, .exemplo, .exemplo, .exemplo]
    @State var isMonthlySelected: Bool = true
    var body: some View {
        ZStack {
            Color.backgroundView
                .ignoresSafeArea()
            VStack {
                
                Toggle(isMonthlySelected: $isMonthlySelected)
                    .padding()
                ScrollView {
                    VStack(spacing: 8) {
                        ForEach(registers) { registro in
                            
                            CardHome(nomeDoEquipamento: registro.equipment?.name ?? "Nada", dataDevolucao: "10/10/2010", responsavel: registro.responsible)
                                .onTapGesture {
                                    print("clicou no item número \(String(describing: index))")
                                }
                        }
                    }
                    .padding(.horizontal)
                }
                
                PrimaryButton(title: "Baixar Planilha") {
                    
                }
                .padding()
            }
        }
    }
}

#Preview {
    RegistrationListView()
    
}
