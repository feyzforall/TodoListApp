//
//  ListView.swift
//  TodoList
//
//  Created by Feyzullah Kodat on 9.02.2023.
//

import SwiftUI

struct ListView: View {
        
    @State var items : [String] = [
        "This is the first item",
        "This is the second",
        "and third"
    ]
    
    var body: some View {
        VStack{
            List{
                ForEach(items, id: \.self) {item in
                    ListRowView(title: item)
                }
                .listStyle(PlainListStyle())
                
            }
        }
        .navigationTitle("TodoList")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink(
                "Add",
                destination: AddView())
        )
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}


