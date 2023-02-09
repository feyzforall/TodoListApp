//
//  ListView.swift
//  TodoList
//
//  Created by Feyzullah Kodat on 9.02.2023.
//

import SwiftUI

struct ListView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
        
    var body: some View {
        VStack{
            List{
                ForEach(listViewModel.items) {item in
                    ListRowView(item: item)
                        .onTapGesture {
                            withAnimation(.linear){
                                listViewModel.updateItem(item: item)
                            }
                        }
                }
                .onDelete(perform: listViewModel.deleteItem)
                .onMove(perform: listViewModel.moveItem)
            }
        }
        .listStyle(PlainListStyle())
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
        .environmentObject(ListViewModel())
    }
}


