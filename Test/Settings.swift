//
//  Settings.swift
//  Test
//
//  Created by Владимир Ширяев on 05.05.2023.
//

import SwiftUI

struct Settings: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: UIColor(.white)]
    }
    
    @State private var showNotification = true
    @Environment(\.dismiss) var dismiss
    
    var body: some View {

            NavigationStack {
                ZStack{
                    Color(#colorLiteral(red: 0.9037758112, green: 0.7109237313, blue: 0.6486091614, alpha: 1))
                        .ignoresSafeArea()
                    
                    VStack{
                        HStack {
                            Text("Settings")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            
                            Spacer()
                            
                            Button {
                                dismiss()
                            } label: {
                                ZStack{
                                    Image(systemName: "circle.fill")
                                        .resizable()
                                        .opacity(0.4)
                                        .frame(width: 30, height: 30)
                                    
                                    Image(systemName: "multiply")
                                        .resizable()
                                        .frame(width: 15, height: 15)
                                        .fontWeight(.bold)
                                }
                                .foregroundColor(.white)
                            }
                        }
                        .padding()
                        
                        Form {
                            Section {
                                Text("General")
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                                HStack{
                                    Text("Subscription")
                                    Spacer()
                                    Text("Active until")
                                    Text(Date.now, format: .dateTime.day())
                                    Text(Date.now, format: .dateTime.month().year())
                                }
                                Toggle("Notification", isOn: $showNotification).toggleStyle(SymbolToggleStyle())
                                
                                Button{
                                    
                                }label: {
                                    HStack{
                                        Text("Rate app")
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                    }
                                }
                                
                                Button{
                                    
                                }label: {
                                    HStack{
                                        Text("Contact support")
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                    }
                                }
                                
                            }
                            .listRowBackground(Color(#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 0.7)))
                            
                            Section {
                                Button{
                                    
                                }label: {
                                    HStack{
                                        Text("Long out")
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                    }
                                }
                                
                                Button{
                                    
                                }label: {
                                    HStack{
                                        Text("Delete account")
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                    }
                                }
                                
                                Button{
                                    
                                }label: {
                                    HStack{
                                        Text("Download personal data")
                                        Spacer()
                                        Image(systemName: "chevron.right")
                                    }
                                }
                                
                            }
                            .listRowBackground(Color(#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 0.7)))
                            
                            Section {
                                Text("Today's blocks")
                                    .font(.system(size: 25))
                                    .fontWeight(.bold)
                                
                                Toggle("Your calendar", isOn: $showNotification)
                                    .toggleStyle(SymbolToggleStyle())
                                
                                Toggle("What fetus is doing", isOn: $showNotification)
                                    .toggleStyle(SymbolToggleStyle())
                                
                                Toggle("To do", isOn: $showNotification)
                                    .toggleStyle(SymbolToggleStyle())
                                
                                Toggle("Your weight", isOn: $showNotification)
                                    .toggleStyle(SymbolToggleStyle())
                            }
                            .listRowBackground(Color(#colorLiteral(red: 0.370555222, green: 0.3705646992, blue: 0.3705595732, alpha: 0.7)).opacity(1))
                        }

                        .font(.system(size: 15))
                        .foregroundColor(.white)
                        .font(.headline)
                        .scrollContentBackground(.hidden)
                        .navigationBarBackButtonHidden(true)
                    }
                }
        }
    }
}
    
    struct Settings_Previews: PreviewProvider {
        static var previews: some View {
            //Home()
            Settings()
        }
    }
    
    struct SymbolToggleStyle: ToggleStyle {
        
        let activeColor: Color = Color(#colorLiteral(red: 0.01680417731, green: 0.1983509958, blue: 1, alpha: 1))
        
        func makeBody(configuration: Configuration) -> some View {
            HStack {
                configuration.label
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 30)
                    .fill(.white)
                    .overlay {
                        Image(systemName: "circle.fill")
                            .resizable()
                            .frame(width: 20,height: 20)
                            .foregroundColor(configuration.isOn ? activeColor : Color(.systemGray5))
                            .offset(x: configuration.isOn ? 10 : -10)
                        
                    }
                    .frame(width: 50, height: 27)
                    .onTapGesture {
                        withAnimation(.spring()) {
                            configuration.isOn.toggle()
                        }
                    }
            }
        }
    }

