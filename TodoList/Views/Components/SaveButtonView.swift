//
//  SaveButtonView.swift
//  TodoList
//
//  Created by Feyzullah Kodat on 9.02.2023.
//

import SwiftUI

struct SaveButtonView: View {
    var body: some View {
        Button(action: {
            
        }, label: {
            Text("Save")
                .frame(height:55)
                .frame(maxWidth:.infinity)
                .foregroundColor(.white)
                .background(.mint)
                .cornerRadius(10)
        })
    }
}

struct SaveButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            SaveButtonView()
        }
    }
}
