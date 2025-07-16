//
//  DetalhesModal.swift
//  FeatIntoModal
//
//  Created by iredefbmac_42 on 19/06/25.
//

import SwiftUI

//struct Movimentacao {
//    var equipamentoNome: String
//    var responsavel: String
//    var data: Date
//    var descricao: String
//    var imagemNome: String
//}

extension Date{
    func formated() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter.string(from: self)
    }
}

struct InfoModal: View {
//    let moviment: Moviment
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack(spacing: 16) {
            
            HStack(alignment: .center, spacing: 16) {
                Image(systemName: "person")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(10)
                    .frame(width: 120, height: 140)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                
                
                VStack(alignment: .leading, spacing: 4) {
//                    Text(moviment.equipamento.nome)
                    Text("NomeEquipamento")
                        .font(.headline)
                        .foregroundColor(.black)
                    
//                    Text(moviment.responsavel)
                    Text("NomeResponsavel")
                        .font(.headline)
                        .foregroundColor(.black)
                    
//                    Text(moviment.data.formated())
                    Text("Data")
                        .font(.headline)
                        .foregroundColor(.black)
                }
                Spacer()
            }
            .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Descricao")
                    .font(.body)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
            }
            .frame(width: .infinity, alignment: .leading)
            .padding()
            
            
            Button(action: {
                print("Editar pressionado")
                //ação de editar deve ser incluída aqui posteriormente
            }) {
                Text("Editar")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.gray.opacity(0.7))
                    .cornerRadius(20)
            }
            .padding(.horizontal)
            .padding(.top, 20)
        }
        .padding(.horizontal)
        .ignoresSafeArea()
    }
}

#Preview {
//    InfoModal(movimentacao: .init(equipamentoNome: "equipamentoNome", responsavel: "responsavel", data: .now, descricao: "descricao", imagemNome: "imagemNome"), isPresented: .constant(true))
//    InfoModal(moviment: .init(equipamento: .init(nome: "Equipament Name", tipo: .informatica, quantidade: 10), data: .now, dataEntrega: .now, responsavel: "Responser"), isPresented: .constant(true))
    InfoModal(isPresented: .constant(true))
}
