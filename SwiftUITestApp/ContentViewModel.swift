//
//  ContentViewModel.swift
//  SwiftUITestApp
//
//  Created by Andrew Trach on 24.11.2022.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    
    @Published private var list: [String] = ["New Element 1"]
    
    func addItem() {
        list.append("New Element \(list.count + 1)")
    }
    
    func removeItem() {
        if list.count > 0 {
            list.remove(at: list.count - 1)
        }
    }
    
    func getList() -> ([String]) {
        return list
    }
}

