//
//  NewRegistration.swift
//  StocApp
//
//  Created by iredefbmac_41 on 23/06/25.
//

import SwiftUI

struct NewRegistration: View {
    let description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ac turpis sit amet velit dictum luctus. Morbi vulputate, nulla in malesuada scelerisque."
    @State private var responsible = ""
    @State private var loanDate = ""
    @State private var tagname = ""
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(alignment: .leading, spacing: 24) {
                    
                    // Objeto
                    Section {
                    VStack(alignment: .leading, spacing: 8) {
                            HStack(spacing: 12) {
                                Image("defaultCard")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                Text("Macbook")
                                    .font(.body)
                                    .foregroundColor(.primary)
                                Spacer()
                            }
                            .padding()
                            .background(Color(.systemGray6))
                            .cornerRadius(12)
                        }
                        
                    } header: {
                        Text("Objeto")
                            .font(.title3)
                            .bold()
                    }
                    
                    // Descrição
                    Section {
                        Text(description)
                            .padding(8)
                    } header: {
                        Text("Descrição")
                            .font(.title3)
                            .bold()
                    }

//
                    
                    // Informações
                    Section {
                        VStack(alignment: .leading, spacing: 16) {
                            
                            
                            CustomTextField(text: $responsible, placeholder: "Responsável", icon: "person")
                            //
                            
                            // Campo Data de Empréstimo
                            CustomTextField(text: $loanDate, placeholder:" Data de Empréstimo", icon: "calendar")
                            
                            
                            // Botão Adicionar Tags (agora funcional)
                            CustomTextField(text: $tagname, placeholder: "Adicionar Tags", icon: "tag")
                            
                            //
                        }
                    } header: {
                        Text("Informações")
                            .font(.title3)
                            .bold()
                    }

                    
                    
                    // Botão Salvar
                    PrimaryButton(title: "Salvar", disabled: true) {
                        print("Registro salvo:")
                        print("Descrição: \(description)")
                        print("Responsável: \(responsible)")
                        print("Data: \(loanDate)")
                    }
                }
                .padding()
            }
            .navigationBarTitle("Novo registro", displayMode: .inline)
            .navigationBarItems(leading: Button("Voltar") {
                // Ação de voltar
            })
        }
    }
}



#Preview {
    NewRegistration()
}
