import SwiftUI

struct HomeView: View {
    var body: some View {
            VStack {
                HomeHeader();
                HomeSlider();
                Spacer()
            }
            .navigationBarHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
