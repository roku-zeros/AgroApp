import SwiftUI

class TaskViewModel: ObservableObject {
    @Published var tasks: [Task] = []
    
    func fetchTasks() {
        guard let url = URL(string: "http://94.139.254.148/tasks/get_all") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            
            do {
                let tasks = try JSONDecoder().decode([Task].self, from: data)
                DispatchQueue.main.async {
                    self.tasks = tasks
                }
            } catch {
                print(data)
                print("Error decoding tasks: \(error)")
            }
        }.resume()
    }
}

struct TasksView: View {
    @ObservedObject var taskViewModel = TaskViewModel()
    
    var body: some View {
        NavigationView {
            List(taskViewModel.tasks, id: \.id) {
                task in
                NavigationLink(destination: DetailedTaskView(task: task)) {
                    VStack {
                        HStack{
                            Text("Задача №" + String(task.id))
                                .H2Text()
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
                        HStack {
                            Text("[Посмотерть на карте](https://2gis.ru/search/55.767565%2041.470956/geo/70030076118167877/41.475064%2C52.770685?m=41.47469%2C52.770703%2F16.52)")
                                .foregroundColor(Color(hex: "003790"))
                            Spacer()
                        }
                        .padding(.top, 12)
                    }
                    .padding(8)
                }

            }
            .navigationTitle("")

            .onAppear {
                taskViewModel.fetchTasks()
                }
        }
    }
}

#Preview {
    TasksView()
}
