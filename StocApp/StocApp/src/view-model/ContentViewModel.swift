//
//  ContentViewModel.swift
//  StocApp
//
//  Created by Carlos Jorge on 03/06/25.
//
import SwiftUI

@Observable
class ContentViewModel {
    var value = 0

    func somar() -> Void {
        self.value = self.value + 1
    }
}
