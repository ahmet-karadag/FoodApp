//
//  LoginView.swift
//  FoodApp
//
//  Created by ahmet karadağ on 10.12.2023.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView{
            VStack{
                //header
                HeaderView(title: "hoş geldiniz", subtitle: "siparişinizi verin getirelim ", angle: 16, background: .red)
                
                //Login form
                Form{
                    TextField("email adrasiniz", text:$email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                    SecureField("şifreniz", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    

                    FButton(title: "giriş", background: .blue){
                          //giriş işlemleri.
                    }
                        .padding(.bottom,40)
                }
                .offset(y: -40)
               
                //create account
                VStack {
                    Text("yeni bir hesap için")
                    NavigationLink("hesap oluşturun", destination: RegisterView())
                }.padding(.bottom,30)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
