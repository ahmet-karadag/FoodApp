//
//  FoodAppApp.swift
//  FoodApp
//
//  Created by ahmet karadağ on 2.12.2023.
//

import SwiftUI
import FirebaseCore

@main
struct FoodAppApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
       
        WindowGroup {
            MainView()
        }
    }
}
