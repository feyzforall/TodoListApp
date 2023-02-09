//
//  AddView.swift
//  TodoList
//
//  Created by Feyzullah Kodat on 9.02.2023.
//

import SwiftUI

struct AddView: View {
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView{
            VStack{
                TextField(
                    "Type Something",
                    text: $textFieldText
                )
                .padding(.horizontal)
                .frame(height:55)
                .background(.bar)
                .cornerRadius(10)
                .foregroundColor(.mint)
                
                SaveButtonView()
            }
        }
        .padding()
        .navigationTitle("Add Item")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
    }
}


