//
//  ContentView.swift
//  SwiftUITestApp
//
//  Created by Andrew Trach on 24.11.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        Group () {
            HStack (spacing: 50) {
                Button(action: {
                    viewModel.addItem()
                }) {
                    Text("add")
                }
                Button(action: {
                    viewModel.removeItem()
                }) {
                    Text("delete")
                }
            }
            List(viewModel.getList(), id: \.self) { item in
                Text(item)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
