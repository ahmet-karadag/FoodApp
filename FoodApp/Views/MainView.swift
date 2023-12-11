//
//  ContentView.swift
//  FoodApp
//
//  Created by ahmet karadağ on 2.12.2023.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView {
            LoginView()
        }
        .padding(.top,0)
    }
}

#Preview {
    MainView()
}
