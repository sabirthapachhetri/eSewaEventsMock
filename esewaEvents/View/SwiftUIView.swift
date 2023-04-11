import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        Button(action: {
            // add your action here
        }) {
            Text("CONFIRM")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .padding(.horizontal, 150)
                .padding(.vertical, 20)
        }
        .background(
            Capsule()
                .fill(Color.green)
        )
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
            .previewLayout(.fixed(width: 370, height: 170))
    }
}
