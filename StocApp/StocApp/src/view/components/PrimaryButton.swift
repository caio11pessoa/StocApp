//
//  PrimaryButton.swift
//  StocApp
//
//  Created by Caio de Almeida Pessoa on 01/07/25.
//

import SwiftUI

struct PrimaryButton: View {
    
    var title: String = "Button"
    var disabled: Bool = false
    
    var action: () -> Void = {}
    var body: some View {
        Button(action: action) {
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .foregroundStyle(disabled ? .buttonDisabled :.black)
                Text(title)
                    .foregroundStyle(.white)
                    .font(.system(size: 16))
                    .bold()
            }
            .frame(height: 48)
        }.disabled(disabled)
    }
}

#Preview {
    PrimaryButton(title: "Title"){
        print("Botão clicado")
    }
}
