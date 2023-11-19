//
//  InWorkView.swift
//  AgroApp
//
//  Created by Роберт Згонников on 19.11.2023.
//

import SwiftUI

struct InWorkView: View {
    @Environment(\.dismiss) private var dismiss
    var task: Task
    @State var startDate = Date.now
        @State var timeElapsed: Int = 0
        
        let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

        

    var body: some View {
        VStack{
            VStack{
                GIFImage(name: "tractor-zeggs")
                    .frame(width: 200)
            }
            
            Spacer()
            Text("Задача в работе:")
                .font(.largeTitle)
            Text("\(timeElapsed) секунд")
                        // 2
                        .onReceive(timer) { firedDate in

                            print("timer fired")
                            // 3
                            timeElapsed = Int(firedDate.timeIntervalSince(startDate))

                        }
                        .font(.largeTitle)
                        .padding(.bottom, 24)
            Spacer()
            Button("Go back") {
                dismiss()
            }
            
            /*
            NavigationLink(
                dismiss()
            ) {
                Text("Закончить задачу")
                    
            }
            .frame(width: 200)
            .foregroundColor(.white)
            .padding()
            .background(Color(hex: "000000"))
            .cornerRadius(10)
            .padding(.bottom, 24)*/
            
        }
    }
}

#Preview {
    InWorkView(task: Task(id: 1, place_name: "Поле 1", type: "Посев", lat: 41.49144, long: 52.78739, duration: 120, priority: "Высокий", processing_area: 4, executor: "123", status: "Создана"))
}
