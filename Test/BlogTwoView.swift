//
//  BlogTwoView.swift
//  Test
//
//  Created by Владимир Ширяев on 08.05.2023.
//

import SwiftUI

struct BlogTwoView: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            
            VStack(alignment: .trailing){
                Button{
                    
                }label: {
                    HStack{
                        Text("Long out")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 9.5, height: 19)
                    }
                }
                .padding(.top,20)
                .padding(.horizontal,20)
                Divider()
                    .frame(width: 328)
                    .background(Color(UIColor(red: 0.475, green: 0.475, blue: 0.475, alpha: 0.5)))
            }
            VStack{
                Button{
                    
                }label: {
                    HStack{
                        Text("Delete account")
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
                        Text("Download personal data")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .resizable()
                            .frame(width: 9.5, height: 19)
                    }
                }
    
                .padding(.horizontal,20)
                .padding(.bottom,20)
            }
        .frame(maxWidth: 350, maxHeight: 136)
        .font(.system(size: 16))
        .foregroundColor(.white)
        .background((Color(UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 0.5).cgColor)))
        .cornerRadius(30)
        .padding(.horizontal,20)
    }
}


struct BlogTwoView_Previews: PreviewProvider {
    static var previews: some View {
        BlogTwoView()
    }
}
