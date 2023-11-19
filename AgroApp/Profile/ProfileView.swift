//
//  ProfileView.swift
//  AgroApp
//
//  Created by Роберт Згонников on 19.11.2023.
//

import SwiftUI

struct ProfileView: View {
    @State var progressValue: Float = 0.12
    
    
    var body: some View {
        ScrollView {
            Image("profileJamshut")
                .padding(.top, 16)
            Text("Олег")
                .padding(.top, 8)
                .H2Text()
            Button("Мидл-тракторист"){}
                .yellowText()
                .padding(.vertical, 2)
                .padding(.horizontal, 8)
                .background(Color(hex: "FBF3D0"))
                .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
            
            HStack {
                VStack {
                    Text("Ваш KPI")
                        .H2Text()
                    ProgressBar(progress: $progressValue)
                        .frame(width: 150.0, height: 150.0)
                        .padding(.top, 26)
                    HStack{
                        Image("refresh")
                        Text("Обновлено сегодня в 8:00")
                    }
                        .padding(.top, 24)
                }
                .padding(24)
            
            }
            .frame(width: UIScreen.main.bounds.width - 32)
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .padding(.top, 35)

            

        }
        .frame(width: UIScreen.main.bounds.width)
        .background(Color(hex: "F6F7F8"))
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
