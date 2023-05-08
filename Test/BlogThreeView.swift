//
//  BlogThreeView.swift
//  Test
//
//  Created by Владимир Ширяев on 08.05.2023.
//

import SwiftUI

struct BlogThreeView: View {
    
    @State private var showTodo = true
    @State private var showCalendar = true
    @State private var showWhatFetus = true
    @State private var showWeight = true
    
    var body: some View {
        VStack(alignment: .leading) {
            
            
            Text("Today's blocks")
                .font(.system(size: 24))
                .fontWeight(.heavy)
                .padding(.top,20)
                .padding(.horizontal,20)
            
            Spacer()
            
            VStack(alignment: .trailing){
                Toggle("Your calendar", isOn: $showCalendar)
                    .toggleStyle(SymbolToggleStyle())
                    .padding(.horizontal,20)
                Divider()
                    .frame(width: 328)
                    .background(Color(UIColor(red: 0.475, green: 0.475, blue: 0.475, alpha: 0.5)))
            }
            VStack{
                Toggle("What fetus is doing", isOn: $showWhatFetus)
                    .toggleStyle(SymbolToggleStyle())
                    .padding(.horizontal,20)
                Divider()
                    .frame(width: 328)
                    .background(Color(UIColor(red: 0.475, green: 0.475, blue: 0.475, alpha: 0.5)))
            }
            VStack{
                Toggle("To do", isOn: $showTodo)
                    .toggleStyle(SymbolToggleStyle())
                    .padding(.horizontal,20)
                Divider()
                    .frame(width: 328)
                    .background(Color(UIColor(red: 0.475, green: 0.475, blue: 0.475, alpha: 0.5)))
            }
            VStack{
                Toggle("Your weight", isOn: $showWeight)
                    .toggleStyle(SymbolToggleStyle())
                    .padding(.horizontal,20)
            }
            
            Spacer()
            Spacer()
        
        }
        .frame(maxWidth: 350, maxHeight: 235)
        .font(.system(size: 16))
        .foregroundColor(.white)
        .background((Color(UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 0.5).cgColor)))
        .cornerRadius(30)
        .padding(.horizontal,20)
    }
}


struct BlogThreeView_Previews: PreviewProvider {
    static var previews: some View {
        BlogThreeView()
    }
}
