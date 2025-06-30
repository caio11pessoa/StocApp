//
//  CardHome.swift
//  StocApp
//
//  Created by iredefbmac_41 on 23/06/25.
//

import SwiftUI

struct CardHome: View {
    var nomeDoEquipamento: String = "Macbook"
    var dataDevolucao: String = "14/07/2025"
    var responsavel: String = "Lais Godinho"
    var body: some View {
        
        HStack{
            Image(.defaultCard)
                .resizable()
                .scaledToFit()
                .frame(width:58, height: 56)
            VStack(alignment:.leading){
                HStack {
                    Text(nomeDoEquipamento)
                        .font(.system(size:14))
                        .foregroundStyle(.primary)
                    Spacer()
                    Text(dataDevolucao)
                        .font(.system(size:14))
                        .foregroundStyle(.secondary)
                    Button{} label: {
                        Image(systemName: "info.circle")
                            .foregroundStyle(.black )
                            .bold()
                    }
                    
                }
                Text(responsavel)
                    .foregroundStyle(.secondary)
                    .font(.system(size:14, weight: .bold))
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .overlay( RoundedRectangle(cornerRadius: 20)
            .stroke(.backgroundCard, lineWidth: 2))
    }
}

#Preview {
    CardHome()
        .frame(width: 316)
}
#Preview{
    List{
        CardHome(responsavel: "Caio")
            .onTapGesture {
                
            }
        CardHome(nomeDoEquipamento: "Cabo USB", dataDevolucao: "10/10/2025", responsavel: "Maria Sarah")
        CardHome(nomeDoEquipamento: "Mac2",dataDevolucao: "10/11/2025", responsavel: "Maria Vitoria")
        CardHome()
        CardHome()
        CardHome()
        CardHome()
    }
}
