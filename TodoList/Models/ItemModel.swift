//
//  ItemModel.swift
//  TodoList
//
//  Created by Feyzullah Kodat on 9.02.2023.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
