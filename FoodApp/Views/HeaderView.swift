//
//  HeaderView.swift
//  FoodApp
//
//  Created by ahmet karadağ on 10.12.2023.
//

import SwiftUI

struct HeaderView: View {
   
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(Color.red)
                .rotationEffect(Angle(degrees: +16))
               
            VStack{
                Text("Hoşgeldiniz")
                    .font(.system(size: 40))
                    .foregroundStyle(Color.white)
                Text("hemen giriş yapalirsiniz")
                    .font(.system(size: 30))
                    .foregroundStyle(Color.white)
            }.padding(.top,20)
        }
        .frame(width: UIScreen.main.bounds.width*3,height: 350)
        .offset(y:-185)
    }
}

#Preview {
    HeaderView()
}
