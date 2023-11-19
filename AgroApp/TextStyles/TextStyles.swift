import SwiftUI

struct H2Style: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(
            Font.custom("Inter", size: 24)
            .weight(.bold)
            )
            .foregroundColor(Color(red: 0.13, green: 0.13, blue: 0.13))
    }
}

extension View {
    func H2Text() -> some View {
        self.modifier(H2Style())
    }
}


struct YellowStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(
            Font.custom("Inter", size: 14)
            .weight(.medium)
            )
            .multilineTextAlignment(.center)
            .foregroundColor(Color(red: 0.78, green: 0.51, blue: 0.1))
    }
}

extension View {
    func yellowText() -> some View {
        self.modifier(YellowStyle())
    }
}

struct TextStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(
            Font.custom("Inter", size: 16)
            .weight(.medium)
            )
            .multilineTextAlignment(.center)
            .foregroundColor(.black)
    }
}

extension View {
    func textText() -> some View {
        self.modifier(TextStyle())
    }
}
