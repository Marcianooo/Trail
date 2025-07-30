import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [Color.colorGreenLight, .colorGreenMedium],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            Circle()
                .stroke(LinearGradient(colors:
                                        [Color.colorGrayLight, .colorGrayMedium],
                                       startPoint: .top,
                                       endPoint: .bottom),lineWidth: 4)
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(colors: [Color.colorGrayLight, .colorGrayMedium],
                                   startPoint: .top,
                                   endPoint: .bottom
                                  )
                )
        } //: ZSTACK
        .frame(width: 58, height: 58)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CustomButtonView()
        .padding()
}
