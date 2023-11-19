//
//  DetailedTaskView.swift
//  AgroApp
//
//  Created by Роберт Згонников on 19.11.2023.
//

import SwiftUI

struct DetailedTaskView: View {
    var task: Task

    var body: some View {
        VStack {
            Image("agrobg")
                .frame(width: UIScreen.main.bounds.width + 100)
                .edgesIgnoringSafeArea(.top)
                HStack{
                    Text("Задача №" + String(task.id))
                        .H2Text()
                        .padding(.leading, 16)
                    Spacer()
                }
                HStack {
                    if task.priority == "Высокий" {
                        Button("Высокий"){}
                            .RedText()
                            .padding(.vertical, 2)
                            .padding(.horizontal, 8)
                            .background(Color(hex: "E7D5D5"))
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    } else if task.priority == "Средний"{
                        Button("Средний"){}
                            .yellowText()
                            .padding(.vertical, 2)
                            .padding(.horizontal, 8)
                            .background(Color(hex: "FBF3D0"))
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    } else {
                        Button("Низкий"){}
                            .GreenText()
                            .padding(.vertical, 2)
                            .padding(.horizontal, 8)
                            .background(Color(hex: "D9F9E6"))
                            .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                    }
                    Button(String(task.duration) + " минут"){}
                        .padding(.vertical, 2)
                        .padding(.horizontal, 8)
                        .overlay(
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(Color(hex: "E0E0E0"), lineWidth: 1)
                            )
                        .foregroundColor(.black)
                    Spacer()
                }
                .padding(.leading, 16)
                Text(task.description).foregroundStyle(.primary)
                .padding(.top, 16)
                Spacer()
                NavigationLink("Приступить"){
                    InWorkView(task: task)
                }
                .frame(width: 200)
                .foregroundColor(.white)
                .padding()
                .background(Color(hex: "2FB95D"))
                .cornerRadius(10)
                .padding(.bottom, 24)
            }
            Spacer()
        .navigationBarTitle("")
    }
}

#Preview {
    DetailedTaskView(task: Task(id: 1, place_name: "Поле 1", type: "Посев", lat: 41.49144, long: 52.78739, duration: 120, priority: "Высокий", processing_area: 4, executor: "123", status: "Создана", description: "ОБРАБОТКА Техника: К-742 #1254 Агрегат: Catros 6TS2 #1 Глубина: 8-10 см Рабочая скорость, км/ч :12-14"))
}
