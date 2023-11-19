//
//  AgroAppApp.swift
//  AgroApp
//
//  Created by Роберт Згонников on 18.11.2023.
//

import SwiftUI

@main
struct AgroAppApp: App {
    var body: some Scene {
        WindowGroup {
            //ContentView()
            AgroView()
        }
    }
}

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgbValue: UInt64 = 0
        scanner.scanHexInt64(&rgbValue)

        let r = Double((rgbValue & 0xff0000) >> 16) / 255.0
        let g = Double((rgbValue & 0xff00) >> 8) / 255.0
        let b = Double(rgbValue & 0xff) / 255.0

        self.init(red: r, green: g, blue: b)
    }
}
