import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack {
            Text("Tickets Summary (3)")
                .font(.system(size: 16))
                .fontWeight(.heavy)
                .padding(.leading, -187)
                .padding(.top, 9)
                .padding(.bottom, 10)
                .fixedSize(horizontal: true, vertical: false)

            
            HStack {
                Text("Silver Ticket X 1")
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                Spacer()
                Text("NPR. 999")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.gray)
            }
            .padding(.bottom)
            
            HStack {
                Text("Gold Ticket X 1")
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                Spacer()
                Text("NPR. 4999")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.gray)
            }
            .padding(.bottom)
            
            HStack {
                Text("Diamond Ticket X 1")
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                Spacer()
                Text("NPR. 8999")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.gray)
            }
            Divider().frame(width: 370, height: 5)
            
            HStack {
                Text("Sub Total")
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                Spacer()
                Text("NPR. 14978")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.gray)
            }
            .padding(.bottom)
            
            HStack {
                Text("Cashback")
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.green)
                Spacer()
                Text("NPR. 100")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.gray)
            }
            .padding(.bottom)
            
            HStack{
                Text("Grand Total")
                    .font(.system(size: 14))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding(.leading, 8)
                Spacer()
                Text("NPR. 14878")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.black)
                    .padding(.trailing, 8)
            }
            .frame(width: 390, height: 40)
            .background(Color(red: 209/255, green: 217/255, blue: 230/255))
            .cornerRadius(8)
        }
        .frame(width: 370, height: 370)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
            .previewLayout(.fixed(width: 380, height: 370))
    }
}
