//
//  HeaderView.swift
//  FoodApp
//
//  Created by ahmet karadağ on 10.12.2023.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle : Double
    let background: Color
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(background)
                .rotationEffect(Angle(degrees: angle))
               
            VStack{
                Text(title)
                    .font(.system(size: 40))
                    .foregroundStyle(Color.white)
                    .padding(.top,30)
                Text(subtitle)
                    .font(.system(size: 30))
                    .foregroundStyle(Color.white)
            }.padding(.top,20)
        }
        .frame(width: UIScreen.main.bounds.width*3,height: 350)
        .offset(y:-185)
    }
}

#Preview {
    HeaderView(title: "title", subtitle: "subtitle", angle: 16, background: .red)
}
