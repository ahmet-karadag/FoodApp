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
              HeaderView()
                //Login form
                Form{
                    TextField("email adrasiniz", text:$email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("şifreniz", text: $password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    Button(action: {
                        //giriş işlemleri
                    }, label: {
                        ZStack {
                            RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                            Text("giriş")
                                .foregroundStyle(Color.white)
                                .bold()
                        }
                    }).padding(.bottom,45)
                }
               
                //create account
                VStack {
                    Text("yeni bir hesap için")
                    NavigationLink("hesap oluşturun", destination: RegisterView())
                }.padding(.bottom,50)
                
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}
