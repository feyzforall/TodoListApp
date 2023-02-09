//
//  ItemModel.swift
//  TodoList
//
//  Created by Feyzullah Kodat on 9.02.2023.
//

import Foundation

// Immutable Struct
struct ItemModel: Identifiable, Codable {
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool){
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func updateCompletion() -> ItemModel{
        return ItemModel(id: self.id, title: self.title, isCompleted: !isCompleted)
    }
}

