//
//  LoginView.swift
//  AgroApp
//
//  Created by Роберт Згонников on 19.11.2023.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Text("Поднесите NFC метку чтобы авторизироваться ").frame(width: 400)
                .H2Text()
                .multilineTextAlignment(.center)
            GIFImage(name: "nfc")
                .frame(width: 150, height: 150)
                .padding(.top, 32)
        }
    }
}

#Preview {
    LoginView()
}
