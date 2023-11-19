import SwiftUI

struct AgroView: View {
    var body: some View {
        VStack {
            Text("Поднесите NFC метку чтобы авторизироваться ").frame(width: 400)
                .H2Text()
                .multilineTextAlignment(.center)
            GIFImage(name: "wavy")
                .frame(width: 150, height: 150)
                .padding(.top, 32)
        }
    }
}

#Preview {
    AgroView()
}
