//
//  ContentView.swift
//  AgroApp
//
//  Created by Роберт Згонников on 18.11.2023.
//

import SwiftUI

struct ContentView: View {
    init() {
            // change TabBar background
            UITabBar.appearance().backgroundColor = UIColor.white
        }
    
    var body: some View {
        TabView {
                Text("Favourites Screen")
                    .tabItem {
                        Image(systemName: "list.number")
                        Text("Задачи")
                }
                Text("Friends Screen")
                    .tabItem {
                        Image(systemName: "message")
                        Text("Чат поддержки")
                }
                ProfileView()
                    .tabItem {
                        Image(systemName: "person")
                        Text("Профиль")
                }
            }
        .background(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
