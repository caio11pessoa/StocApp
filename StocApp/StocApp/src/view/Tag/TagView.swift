//
//  TagView.swift
//  StocApp
//
//  Created by iredefbmac_41 on 23/06/25.
//

import SwiftUI

struct TagView: View {
    var tags: [Tag] = [
        .init(tagName: "Exemplo 1", imageName: "globe"),
        .init(tagName: "Exemplo 2", imageName: "star"),
        .init(tagName: "Exemplo 3", imageName: "folder"),
        .init(tagName: "Exemplo 1", imageName: "globe"),
        .init(tagName: "Exemplo 2", imageName: "star"),
        .init(tagName: "Exemplo 1", imageName: "globe"),
        .init(tagName: "Exemplo 2", imageName: "star"),
        .init(tagName: "Exemplo 1", imageName: "globe"),
        .init(tagName: "Exemplo 2", imageName: "star"),
        .init(tagName: "Exemplo 1", imageName: "globe"),
        .init(tagName: "Exemplo 2", imageName: "star"),
        .init(tagName: "Exemplo 1", imageName: "globe"),
        .init(tagName: "Exemplo 2", imageName: "star"),
        .init(tagName: "Exemplo 1", imageName: "globe"),
        
    ]

    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                ForEach(tags) { tag in
                    Card(title: tag.tagName, iconName: tag.imageName) {
                        
                    }
                }
            }
            .padding()
        }
        .navigationTitle("Estoque Completo")
    }
}

#Preview {
    TagView()
}
