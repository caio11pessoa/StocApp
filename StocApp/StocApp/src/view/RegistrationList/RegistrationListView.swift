//
//  RegistrationList.swift
//  StocApp
//
//  Created by iredefbmac_41 on 23/06/25.
//

import SwiftUI


struct Movi: Identifiable{
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
    static var exemplo: Movi {
        return .init(
            equipment: nil,
            loanDate: Date(),
            expectedReturnDate: Date(),
            responsible: "")
    }
}
struct RegistrationListView: View {
//    var registers: [Moviment] = [.exemplo, .exemplo, .exemplo, .exemplo]
    var registers: [Movi] = [.exemplo, .exemplo, .exemplo, .exemplo]
    @State var isMonthlySelected: Bool = true
    var body: some View {
        ZStack {
            Color.backgroundView
                .ignoresSafeArea()
            VStack {
                //            HStack(spacing: 0) {
                //                Button("Mensal") {
                //                    withAnimation {
                //                        isMonthlySelected = true
                //                    }
                //                }
                //                .foregroundColor( .black)
                //                .frame(maxWidth: .infinity)
                //                .frame(height: 38)
                //                .background(isMonthlySelected ? Color.white : Color.gray.opacity(0), in: RoundedRectangle(cornerRadius: 12))
                //                .padding(4)
                //                .shadow(radius: isMonthlySelected ? 2 : 0)
                //
                //                Button("Anual") {
                //                    withAnimation {
                //                        isMonthlySelected = false
                //                    }
                //                }
                //                .foregroundColor( .black)
                //                .frame(maxWidth: .infinity)
                //                .frame(height: 38)
                //                .background(!isMonthlySelected ? Color.white : Color.gray.opacity(0))
                //                .padding(4)
                //                .shadow(radius: !isMonthlySelected ? 2 : 0)
                //            }
                //            .frame(height: 48)
                //            .background(Color(red: 118/225, green: 118/225, blue: 128/225, opacity: 0.12), in: RoundedRectangle(cornerRadius: 12))
                Toggle(isMonthlySelected: $isMonthlySelected)
                    .padding()
                ScrollView {
                    VStack(spacing: 8) {
                        ForEach(registers) { registro in
//                            CardHome(nomeDoEquipamento: registro.equipamento.nome, dataDevolucao: "10/10/2010", responsavel: registro.responsavel )
//                                .onTapGesture {
//                                    print("clicou no item número \(String(describing: index))")
//                                }
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
