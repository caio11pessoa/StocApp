//
//  ImageSelectorView.swift
//  featCustomImagePicker
//
//  Created by iredefbmac_42 on 02/07/25.
//

import SwiftUI
import UIKit

struct ImageSelectorView: View {
    @State private var showImagePicker = false
    @State private var selectedImage: UIImage?
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Group {
                if let image = selectedImage {
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFill()
                } else {
                    Color.gray.opacity(0.2)
                }
            }
            .frame(width: 200, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 20))	
            .contentShape(RoundedRectangle(cornerRadius: 20)) //torna toda a área clicável
            .onTapGesture {
                showImagePicker = true
            }
            
            //Botão com ícone do lápis
            Button(action: {
                showImagePicker = true
            }) {
                Image(systemName: "pencil")
                    .foregroundColor(.black)
                    .padding(10)
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(radius: 2)
            }
            .offset(x: -10, y: -10)
        }
        .sheet(isPresented: $showImagePicker) {
            ImagePicker(image: $selectedImage)
        }
    }
}

#Preview {
    ImageSelectorView()
}

