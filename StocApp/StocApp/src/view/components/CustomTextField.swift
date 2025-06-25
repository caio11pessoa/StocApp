//Add commentMore actions
//  CustomTextField.swift
//  text-area
//
//  Created by iredefbmac_42 on 12/06/25.
//
import SwiftUI

struct CustomTextField: View {
    
    @Binding var text: String
    var placeholder: String
    var icon: String = "pencil"
    var isSecure: Bool = false
    
    @FocusState private var isFocused: Bool
    
    var body: some View {
        ZStack {
            // Fundo visual e borda comum aos dois estados
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.systemGray6))
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(isFocused ? Color.blue : Color.gray.opacity(0.4), lineWidth: 2)
                )
            
            // Conteúdo dinâmico (edição ou visualização)
            HStack(alignment: .center, spacing: 12) {
                Image(systemName: icon)
                    .font(.system(size: 30))
                    .foregroundColor(.gray)
                    .padding(.top, (isFocused && !text.isEmpty) ? 8: 0)
                
                ZStack(alignment: .leading) {
                    if !text.isEmpty && !isFocused {
                        VStack(alignment: .leading, spacing: 2) {
                            Text(placeholder)
                                .font(.headline)
                                .font(.system(size: 20))
                                .foregroundColor(.primary)
                            Text(text)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                        .allowsHitTesting(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/) //desativa interaçao
                        .opacity(1)
                    }
                    
                    //campo de entrada sempre presente
                    Group {
                        if isSecure {
                            SecureField(placeholder, text: $text)
                                .focused($isFocused)
                        } else {
                            TextField(placeholder, text: $text)
                                .focused($isFocused)
                        }
                    }
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .disableAutocorrection(true)
                    .opacity((!text.isEmpty && !isFocused) ? 0 : 1)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.vertical, 16)
            .padding(.horizontal, 20)
        }
        .frame(minHeight: 60, maxHeight: 100)
        .padding(.horizontal)
        .onTapGesture {
            isFocused = true
        }
        .animation(.easeInOut(duration: 0.2), value: isFocused)
    }
}

#Preview {
    CustomTextField(text: .constant("Text"), placeholder: "Placeholder")
}
