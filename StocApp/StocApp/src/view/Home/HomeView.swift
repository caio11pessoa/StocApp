//
//  SwiftUIView.swift
//  StocApp
//
//  Created by iredefbmac_41 on 24/06/25.
//

import  SwiftUI

struct HomeView: View {
    var body: some View{
        NavigationStack{
            VStack{
                Text("Tela Inicial")
            }
            
            .navigationTitle("LoopStock")
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    
                    Button(action:{
                        print("Botão da Toolbar clicado")
                    }){
                        Text("Estoque Completo")
                            .font(.caption)
                            .padding(8)
                            .background(Color.gray.opacity(0.2))
                            .clipShape(Capsule())
                        
                    }
                }
                
            }
        }
    }
    }
#Preview{
    HomeView()
    }
