//
//  DetalhesModal.swift
//  FeatIntoModal
//
//  Created by iredefbmac_42 on 19/06/25.
//

import SwiftUI

struct Movimentacao {
    var equipamentoNome: String
    var responsavel: String
    var data: Date
    var descricao: String
    var imagemNome: String
}

extension Date{
    func formatada() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter.string(from: self)
    }
}

struct InfoModal: View {
    let movimentacao: Movimentacao
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack(spacing: 16) {
            
            Capsule()
                .fill(Color.gray.opacity(0.4))
                .frame(width: 40, height: 5)
                .padding(.top,8)
            
            HStack(alignment: .center, spacing: 16) {
                Image(movimentacao.imagemNome)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(10)
                    .frame(width: 120, height: 140)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(movimentacao.equipamentoNome)
                        .font(.headline)
                        .foregroundColor(.black)
                    
                    Text(movimentacao.responsavel)
                        .font(.headline)
                        .foregroundColor(.black)
                    
                    Text(movimentacao.data.formatada())
                        .font(.headline)
                        .foregroundColor(.black)
                }
                Spacer()
            }
            .padding(.horizontal)
            
            VStack(alignment: .leading, spacing: 8) {
                Text(movimentacao.descricao)
                    .font(.body)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
            }
            .padding()
            
            Spacer()
            
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
            .padding(.bottom, 20)
            .padding(.top, 20)
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.white)
        )
        .shadow(radius: 5)

    }
}

#Preview {
    InfoModal(movimentacao: .init(equipamentoNome: "vazio", responsavel: "Vazio", data: .now, descricao: "vazia", imagemNome: "name"), isPresented: .constant(true))
}
