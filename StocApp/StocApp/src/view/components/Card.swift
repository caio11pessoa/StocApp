//
//  Card.swift
//  StocApp
//
//  Created by iredefbmac_43 on 18/06/25.
//

import SwiftUI

struct Card: View {
    let title: String
    let iconName: String
//    var action: () -> Void = {}

    var body: some View {
//        Button(action: action) {
            VStack(alignment: .leading, spacing: 0) {
                HStack {
                    Image(systemName: iconName)
                        .font(.title2)
                        .padding(4)
                        .background(Color.white)
                        .cornerRadius(12)
                    
                    Spacer()
                }
                
                Spacer()
                
                Text(title)
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.bottom, 8)
                    .multilineTextAlignment(.leading)
            }
            .padding()
            .frame(width: 120, height: 130)
            .background(Color(.systemGray5))
            .cornerRadius(22)
//        }
//        .buttonStyle(PlainButtonStyle())
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Card(title: "Novo Registro", iconName: "square.and.arrow.down.on.square")
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Card - Novo Registro")

            Card(title: "Novo Estoque", iconName: "shippingbox.fill")
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Card - Novo Estoque")

            Card(title: "Visualizar Registros", iconName: "doc.text.magnifyingglass") 
                .previewLayout(.sizeThatFits)
                .previewDisplayName("Card - Visualizar")
        }
    }
}
