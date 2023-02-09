//
//  NoItemsView.swift
//  TodoList
//
//  Created by Feyzullah Kodat on 9.02.2023.
//

import SwiftUI

struct NoItemsView: View {
    
    @State var animate: Bool = false
    let secondaryAccentColor = Color("SecondaryAccentColor")
    
    var body: some View {
        ScrollView{
            VStack(spacing: 20){
                Text("There are no items")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you a productive person? I think you should click the add button and a bunch of items to your todo list"
                )
                .padding(.bottom, 30)
                   
                NavigationLink(
                    destination: AddView(),
                    label: {
                        Text("Add Something")
                            .foregroundColor(.white)
                            .font(.headline)
                            .frame(height:55)
                            .frame(maxWidth: .infinity)
                            .background(animate ? secondaryAccentColor : Color.accentColor)
                            .cornerRadius(10)
                    }
                )
                .onAppear(perform: addAnimation)
                .padding(.horizontal, animate ? 30 : 50)
                .shadow(
                    color: animate ? Color.red.opacity(0.7) : Color.accentColor.opacity(0.7),
                    radius: animate ? 25 : 15,
                    x: 0,
                    y: animate ? 50 : 30
                )
                .scaleEffect(animate ? 1.1 : 1.0)
                .offset(y: animate ? -7 : 0)
            }
            .multilineTextAlignment(.center)
            .padding(40)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation(){
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5, execute: {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            ){
                animate.toggle()
            }
        })
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NoItemsView()
        }
        .navigationTitle("Title")
    }
}
