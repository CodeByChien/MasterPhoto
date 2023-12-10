
import SwiftUI

struct ButtonMakePassport: View {
    var body: some View {
        VStack {
            Spacer()
            Image("icPickImage")
                .resizable()
                .frame(width: 24, height: 24)
            Text("Make ID/Passport")
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(Color(hex: 0xF4F4F4))
        .cornerRadius(8)
        .aspectRatio(4/1, contentMode: .fit)
    }
}
