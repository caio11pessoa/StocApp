//
//  SwiftUIView.swift
//  StocApp
//
//  Created by iredefbmac_41 on 24/06/25.
//

import  SwiftUI
import SwiftData

struct HomeView: View {
    @Environment(\.modelContext) var modelContext
    @State private var searchText: String = ""
    @State private var openInfoModal: Bool = false
    
    var cards: [String] = ["Lais Godinho", "Carlos Jorge", "Caio Pessoa", "João Paulo", "João Pedro", "João"]
    
    
    var body: some View{
        NavigationStack{
            ZStack{
                Color(cgColor: CGColor(red: 245/255, green: 245/255, blue: 245/255, alpha: 1))
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Group {
                            NavigationLink {
                                NewRegistration()
                            } label: {
                                Card(title: "Novo Registro", iconName: "rectangle.portrait.and.arrow.right")
                            }
                            
                            NavigationLink {
                                // 
                            } label: {
                                Card(title: "Novo Estoque", iconName: "rectangle.portrait.and.arrow.right")
                            }
                            NavigationLink {
                                RegistrationListView()
                            } label: {
                                Card(title: "Visualizar Registros", iconName: "text.document")
                            }

//                            NavigationLink{
//                                RegistrationListView()
//                            } label: {
//                                
//                                Card(title: "Visualizar Registros", iconName: "rectangle.portrait.and.arrow.right")
//                            }
                        }
                        .foregroundStyle(.black)
                        
                    }
                    Section {
                        VStack{
                            ScrollView {
                                ForEach(cards, id: \.self){ card in
                                    CardHome(responsavel: card){
                                        openInfoModal = true
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                    } header: {
                        HStack{
                            Text("Registros para expirar")
                                .bold()
                            Spacer()
                        }
                        .padding([.top, .horizontal])
                    }
                    
                }
            }
            .searchable(text: $searchText, prompt: "Pesquisar")
            
            .navigationTitle("LoopStock")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    
                    NavigationLink {
                        TagView()
                    } label: {
                        Text("Estoque Completo")
                            .font(.caption)
                            .padding(8)
                            .background(Color.gray.opacity(0.2))
                            .clipShape(Capsule())
                    }
                }
                
            }
            .sheet(isPresented: $openInfoModal) {
                InfoModal(isPresented: $openInfoModal)
                    .presentationDetents([.height(320), .large])
                    .padding(.top, 40)
            }
        }
    }
}
#Preview{
    HomeView()
}
