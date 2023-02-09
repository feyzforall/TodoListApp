//
//  ListRowView.swift
//  TodoList
//
//  Created by Feyzullah Kodat on 9.02.2023.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
                .frame(height:40)
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

struct ListRowView_Previews: PreviewProvider {
        
    static var item1: ItemModel = ItemModel(title: "This is the first item", isCompleted: false)
    static var item2: ItemModel = ItemModel(title: "This is the second item", isCompleted: true)
    
    static var previews: some View {
        Group{
            ListRowView(item: item1)
            ListRowView(item: item2)
        }
        .previewLayout(.sizeThatFits)
    }
}
