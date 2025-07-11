//
//  CardObject.swift
//  StocApp
//
//  Created by iredefbmac_41 on 11/07/25.
//

import SwiftUI

struct CardObject: View {
    var image: String = "defaultCard"
    var name: String = "Macbook"
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
                HStack(spacing: 12) {
                    Image(image)
                        .resizable()
                        .frame(width: 40, height: 40)
                    Text(name)
                        .font(.body)
                        .foregroundColor(.primary)
                    Spacer()
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(12)
            }    }
}

#Preview {
    CardObject()
}
