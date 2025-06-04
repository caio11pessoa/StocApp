//
//  ContentView.swift
//  StocApp
//
//  Created by Carlos Jorge on 03/06/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    let contentViewModel = ContentViewModel()

    var body: some View {
        VStack {
            Text("Contador \(contentViewModel.value)")
            Button {
                contentViewModel.somar()
            } label: {
                Text("Somar 1")
             }

        }
       
    }
    
    

}

#Preview {
    ContentView()
       
}
