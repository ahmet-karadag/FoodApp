//
//  FButton.swift
//  FoodApp
//
//  Created by ahmet karadağ on 13.12.2023.
//

import SwiftUI

struct FButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    var body: some View {
        Button(action: {
            //giriş işlemleri
        }, label: {
            ZStack {
                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                    .foregroundStyle(background)
                Text(title)
                    .foregroundStyle(Color.white)
                    .bold()
            }
        })
    }
}

#Preview {
    FButton(title: "deger", background: .pink){
        
    }
}
