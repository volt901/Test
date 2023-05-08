//
//  BlogOneView.swift
//  Test
//
//  Created by Владимир Ширяев on 08.05.2023.
//

import SwiftUI

struct BlogOneView: View {
    
    @State private var showNotification = true
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("General")
                .font(.system(size: 24))
                .fontWeight(.heavy)
                .padding(.top,20)
                .padding(.horizontal,20)
            Spacer()
            VStack(alignment: .trailing) {
                HStack{
                    Text("Subscription")
                    Spacer()
                    Text("Active until")
                    Text(Date.now, format: .dateTime.day())
                    Text(Date.now, format: .dateTime.month().year())
                }
                .padding(.horizontal,20)
                Divider()
                    .frame(width: 328)
                    .background(Color(UIColor(red: 0.475, green: 0.475, blue: 0.475, alpha: 0.5)))
            }
            VStack(alignment: .trailing){
                Toggle("Notification", isOn: $showNotification).toggleStyle(SymbolToggleStyle())
                    .padding(.horizontal,20)
                Divider()
                    .frame(width: 328)
                    .background(Color(UIColor(red: 0.475, green: 0.475, blue: 0.475, alpha: 0.5)))
            }
            
            VStack(alignment: .trailing){
                Button{
                    
                }label: {
                    HStack{
                        Text("Rate app")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 9.5, height: 19)
                    }
                }
                .padding(.horizontal,20)
                
                Divider()
                    .frame(width: 328)
                    .background(Color(UIColor(red: 0.475, green: 0.475, blue: 0.475, alpha: 0.5)))
            }
            
            Button{
                
            }label: {
                HStack{
                    Text("Contact support")
                    Spacer()
                    Image(systemName: "chevron.right")
                        .resizable()
                        .frame(width: 9.5, height: 19)
                }
            }
            .padding(.horizontal,20)
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


struct BlogOneView_Previews: PreviewProvider {
    static var previews: some View {
        BlogOneView()
    }
}
