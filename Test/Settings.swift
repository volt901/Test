//
//  Settings.swift
//  Test
//
//  Created by Владимир Ширяев on 05.05.2023.
//

import SwiftUI

struct Settings: View {
    
    @State var showingSetting: Bool = true
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView(){
            HStack {
                Text("Settings")
                    .font(.system(size: 32))
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Spacer()
                
                Button {
                    showingSetting.toggle()
                } label: {
                    ZStack{
                        Image(systemName: "circle.fill")
                            .resizable()
                            .opacity(0.3)
                            .frame(width: 30, height: 30)
                        
                        Image(systemName: "multiply")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .fontWeight(.bold)
                    }
                    .foregroundColor(.white)
                }
            }
            .padding(.horizontal, 20)
            
            BlogOneView()
                .padding(.bottom,20)
            
            BlogTwoView()
                .padding(.bottom,20)
            
            BlogThreeView()
                .padding(.bottom,20)
        }
        .background(Color(UIColor(red: 0.902, green: 0.71, blue: 0.647, alpha: 1)))
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}

struct SymbolToggleStyle: ToggleStyle {
    
    let activeColor: Color = Color(UIColor(red: 0.32, green: 0, blue: 1, alpha: 1))
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.label
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 30)
                .fill(.white)
                .overlay {
                    Image(systemName: "circle.fill")
                        .resizable()
                        .frame(width: 16,height: 16)
                        .foregroundColor(configuration.isOn ? activeColor : Color(.systemGray5))
                        .offset(x: configuration.isOn ? 8 : -8)
                    
                }
                .frame(width: 36, height: 20)
                .onTapGesture {
                    withAnimation(.spring()) {
                        configuration.isOn.toggle()
                    }
                }
        }
    }
}
