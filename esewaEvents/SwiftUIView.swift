import SwiftUI

struct SwiftUIView: View {
    var body: some View {
            VStack {
                Text("Attend Event")
                    .foregroundColor(Color.black)
                    .font(.title2)
                    .fontWeight(.semibold)
                    .foregroundColor(.gray)
                    .padding(.bottom, 1)

                    
                Text("Are you sure you want to attent this event?")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundColor(.gray)
                    .padding(.bottom, 13)
                 
                HStack {
                    Button("Cancel") {
                        // Add code for the Cancel button action
                    }
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                    .padding(.vertical, 10)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .cornerRadius(10)
                    
//                    Spacer()
                    
                    Button("Confirm") {
                        // Add code for the Confirm button action
                    }
                    .padding(.leading, 30)
                    .padding(.trailing, 30)
                    .padding(.vertical, 10)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(10)
//                    .padding(.trailing, 20)
                }

            }
            .frame(width: 450, height: 200)
            .background(Color.purple)
            .clipShape(RoundedRectangle(cornerRadius: 80))
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
            .previewLayout(PreviewLayout.fixed(width: 450, height: 200))
    }
}
