import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            VStack {
                Image("jackSonni")
                    .resizable()
                Spacer()

                VStack(alignment: .leading) {
                    
                    Text("TRADE").foregroundColor(Color.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)

                    
                    Text("Dire Straits Live")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundColor(.black)
                        .padding(.trailing, 70)
                        .padding(.bottom, -4)

                    
                    Text("24 - 26 MAR 2023")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(.green)
                        .padding(.bottom, 13)
                    

                }
                .padding(.bottom, 13)
                .padding(.leading, 20)
                .padding(.trailing)
            }
            .background(Color.white)
            .cornerRadius(40)
            .frame(width: 280, height: 300)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
