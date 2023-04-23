import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack {
//            Color.gray
//                .ignoresSafeArea()
            VStack {
                Image("ludovico")
                    .resizable()
                    .cornerRadius(40)
                    
                    Text("Ludovico")
                        .foregroundColor(Color.black)
                        .fontWeight(.semibold)
                        .foregroundColor(.gray)

                    
                    Text("8 Events")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(.green)
                        .padding(.bottom, 13)
                    
            }
            .background(Color.white)
            .frame(width: 100, height: 150)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
