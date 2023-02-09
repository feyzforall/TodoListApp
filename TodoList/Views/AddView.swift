//
//  AddView.swift
//  TodoList
//
//  Created by Feyzullah Kodat on 9.02.2023.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView{
            VStack{
                TextField(
                    "Type Something",
                    text: $textFieldText
                )
                .padding(.horizontal)
                .frame(height:55)
                .background(Color(UIColor.secondarySystemBackground))
                .cornerRadius(10)
                
                Button(action: {
                    saveButtonPressed()
                }, label: {
                    Text("Save")
                        .frame(height:55)
                        .frame(maxWidth:.infinity)
                        .foregroundColor(.white)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                })
            }
            
        }
        .padding()
        .navigationTitle("Add Item")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonPressed(){
        if textIsAppropriate() {
            listViewModel.addItem(title: textFieldText)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func textIsAppropriate() -> Bool {
        if textFieldText.count < 3 {
            alertTitle = "Your new todo item must be at least 3 characters long !"
            showAlert.toggle()
            return false
        }
        return true
           
    }
    
    func getAlert() -> Alert{
        return Alert(title: Text(alertTitle))
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            NavigationView{
                AddView()
            }
            .preferredColorScheme(.dark)
            .environmentObject(ListViewModel())
            .previewInterfaceOrientation(.portraitUpsideDown)
            NavigationView{
                AddView()
            }
            .preferredColorScheme(.light)
            .environmentObject(ListViewModel())
        }
        
    }
}


