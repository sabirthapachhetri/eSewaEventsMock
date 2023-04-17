import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack {
                    VStack {
                        Rectangle()
                            .foregroundColor(.green)
                            .frame(height: 200)
                            .cornerRadius(80)
                        Rectangle()
                            .foregroundColor(.white)
                            .frame(height: 200)
                    }
                    .padding(.bottom, 592)
                }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}



//ScrollView(.horizontal, showsIndicators: true) {
//    HStack(spacing: 1) {
//        ForEach(0..<3) { index in
//            Image("collection")
//                .resizable()
//                .frame(width: 350, height: 170)
//                .background(Color.gray)
//                .cornerRadius(10)
//                .padding(.leading, 28)
//        }
//    }
//}
