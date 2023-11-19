import SwiftUI

struct AgroView: View {
    var body: some View {
        VStack {
            NavigationView {
                VStack{
                    Text("Поднесите NFC метку чтобы авторизироваться ").frame(width: 400)
                        .H2Text()
                        .multilineTextAlignment(.center)
                    GIFImage(name: "wavy")
                        .frame(width: 150, height: 150)
                        .padding(.top, 32)
                    NavigationLink("Приступить"){
                        ContentView()
                    }
                    .frame(width: 200, height: 200)
                    .foregroundColor(.white)
                    .background(Color(hex: "FFFFFF"))
                }
            }
        }
    }
}

#Preview {
    AgroView()
}
