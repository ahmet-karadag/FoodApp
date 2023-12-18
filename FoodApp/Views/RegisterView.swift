//
//  RegisterView.swift
//  FoodApp
//
//  Created by ahmet karadağ on 10.12.2023.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        @State var name = ""
        @State var email = ""
        @State var password = ""
        
        VStack{
            //header
            HeaderView(title: "kayıt olun ", subtitle: "sipariş vermeye başlayın", angle: -16, background: .green)
            
            Form{
                TextField("adınız", text: $name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("email", text: $email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                SecureField("şifreniz", text: $password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                FButton(title: "hesap oluşturun", background: .blue){
                      //kayıt işlemleri
                }
                .padding(.bottom,40)
            }
            .offset(y: -40)
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
