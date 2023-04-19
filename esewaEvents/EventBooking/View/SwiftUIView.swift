import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack {
            Color.gray
                .ignoresSafeArea()
            VStack {
                Image("appleEvent")
                    .resizable()
                Spacer()

                VStack(alignment: .leading) {
                    Text("WWDC 2023")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .padding(.trailing, 70)
                    
                    Text("FRI, 24 - SUN, 26 MAR 2023")
                        .font(.subheadline)
                        .fontWeight(.medium)
                        .foregroundColor(.green)
                        .padding(.bottom, 13)
                    
                    Text("Apple Park, California")
                        .fontWeight(.medium)
                        .font(.footnote)
                        .foregroundColor(.gray)
                    HStack {
                        Text("Rs. 800")
                            .font(.title3)
                            .font(.footnote)
                            .foregroundColor(.gray)
                                                
                        Spacer()

                        Image(systemName: "square.and.arrow.up")
                            .font(.system(size: 30))
                        Image(systemName: "heart")
                            .font(.system(size: 30))
                    }
                    .padding(.top, 34)
                }
                .padding(.bottom, 13)
                .padding(.leading, 20)
                .padding(.trailing)
            }
            .background(Color.white)
            .cornerRadius(40)
            .frame(width: 280, height: 350)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
