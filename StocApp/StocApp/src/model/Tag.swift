//
//  Tag.swift
//  StocApp
//
//  Created by iredefbmac_43 on 07/07/25.
//
import Foundation

class Tag: Identifiable {
    let id: UUID = UUID()
    let tagName: String
    let imageName: String
    init(tagName: String, imageName: String) {
        self.tagName = tagName
        self.imageName = imageName
    }
}
