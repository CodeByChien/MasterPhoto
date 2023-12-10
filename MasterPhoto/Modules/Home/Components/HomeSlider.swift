import SwiftUI

struct HomeSlider: View {
    @State var index = 0

    var images = ["bannerA", "bannerA", "bannerA", "bannerA"]

    var body: some View {
        VStack(spacing: 20) {
            PagingView(index: $index.animation(), maxIndex: images.count - 1) {
                ForEach(self.images, id: \.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                }
            }
            .aspectRatio(4/1, contentMode: .fit)
            .clipShape(RoundedRectangle(cornerRadius: 8))

//            PagingView(index: $index.animation(), maxIndex: images.count - 1) {
//                ForEach(self.images, id: \.self) { imageName in
//                    Image(imageName)
//                        .resizable()
//                        .scaledToFill()
//                }
//            }
//            .aspectRatio(3/4, contentMode: .fit)
//            .clipShape(RoundedRectangle(cornerRadius: 15))
//
//            Stepper("Index: \(index)", value: $index.animation(.easeInOut), in: 0...images.count-1)
//                .font(Font.body.monospacedDigit())
        }
        .padding()
    }
}
