import SwiftUI

struct HomeView: View {
    @State var currentTab: Int = 0
    var body: some View {
            VStack {
                HomeHeader();
                HomeSlider();
                ButtonPickImage();
                HStack{
                    ButtonMakePassport();
                    ButtonMakeBlurBrush();
                }.padding([.top, .horizontal], 16)
                ZStack(alignment: .top) {
                        TabView(selection: self.$currentTab) {
                                TemplateList().tag(0)
                                TemplateList().tag(1)
                                TemplateList().tag(2)
                                TemplateList().tag(3)
                                TemplateList().tag(4)
                                TemplateList().tag(5)
                            }
                            .tabViewStyle(.page(indexDisplayMode: .never))
                            .edgesIgnoringSafeArea(.all)
                            
                            TabBarView(currentTab: self.$currentTab)
                        }
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
