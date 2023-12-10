import SwiftUI

struct TabBarView: View {
    @Binding var currentTab: Int
    @Namespace var namespace
    
    var tabBarOptions: [String] = ["Trending 🔥", "Profile", "Maketplaces", "Social", "Holiday🎉", "Wall"]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(Array(zip(self.tabBarOptions.indices,
                                  self.tabBarOptions)),
                        id: \.0,
                        content: {
                    index, name in
                    TabBarItem(currentTab: self.$currentTab,
                               namespace: namespace.self,
                               tabBarItemName: name,
                               tab: index)
                    
                })
            }
            .padding(.horizontal)
        }
        .background(Color.white)
        .frame(height: 80)
        .edgesIgnoringSafeArea(.all)
    }
}

struct TabBarItem: View {
    @Binding var currentTab: Int
    let namespace: Namespace.ID
    
    var tabBarItemName: String
    var tab: Int
    
    var body: some View {
        Button {
            self.currentTab = tab
        } label: {
            VStack {
                Spacer()
                Text(tabBarItemName)
                if currentTab == tab {
                    Color.black
                        .frame(height: 2)
                        .matchedGeometryEffect(id: "underline",
                                               in: namespace,
                                               properties: .frame)
                } else {
                    Color.clear.frame(height: 2)
                }
            }
            .animation(.spring(), value: self.currentTab)
        }
        .buttonStyle(.plain)
    }
}
