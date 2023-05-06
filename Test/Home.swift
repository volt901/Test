//
//  Home.swift
//  Test
//
//  Created by Владимир Ширяев on 05.05.2023.
//

import SwiftUI

struct Home: View {
    @State private var showingSetting = false
    
    var body: some View {
        
        NavigationStack {
            ZStack(alignment: .trailing){
                Color(.black).ignoresSafeArea()
                VStack{
                    Button {
                        showingSetting = true
                    } label: {
                        Image(systemName: "gearshape.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white).opacity(0.5)
                    }

                    .sheet(isPresented: $showingSetting) {
                        Settings()
                    }
                    .padding()
                    Spacer()
                }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
