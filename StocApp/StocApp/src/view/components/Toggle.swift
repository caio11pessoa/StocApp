//
//  Toggle.swift
//  StocApp
//
//  Created by iredefbmac_41 on 30/06/25.
//

import SwiftUI

struct Toggle: View {
    @Binding var isMonthlySelected: Bool
    var body:some View{
        VStack {
            HStack(spacing: 0) {
                Button("Mensal") {
                    withAnimation {
                        isMonthlySelected = true
                    }
                }
                .foregroundColor( .black)
                .frame(maxWidth: .infinity)
                .frame(height: 38)
                .background(isMonthlySelected ? Color.white : Color.gray.opacity(0), in: RoundedRectangle(cornerRadius: 12))
                .padding(4)
                .shadow(radius: isMonthlySelected ? 2 : 0)
                
                Button("Anual") {
                    withAnimation {
                        isMonthlySelected = false
                    }
                }
                .foregroundColor( .black)
                .frame(maxWidth: .infinity)
                .frame(height: 38)
                .background(!isMonthlySelected ? Color.white : Color.gray.opacity(0))
                .padding(4)
                .shadow(radius: !isMonthlySelected ? 2 : 0)
            }
        }
    }
}
#Preview{
    /* Contribuição do Caio:
     - Adicionei a variável de estado na preview isMonthlySelecteddd
     - Adicionei o parâmetro à função isMonthlySelected
     */
    @Previewable @State var isMonthlySelected: Bool = true
    Toggle(isMonthlySelected: $isMonthlySelected)
}
