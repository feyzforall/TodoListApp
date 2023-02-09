//
//  ListRowView.swift
//  TodoList
//
//  Created by Feyzullah Kodat on 9.02.2023.
//

import SwiftUI

struct ListRowView: View {
    let title: String
    var body: some View {
        HStack{
            Image(systemName:"checkmark.circle")
            Text(title)
                .frame(height:55)
        }
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "This is the first item")
    }
}
