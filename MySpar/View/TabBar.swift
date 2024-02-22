// Created by Vlad Lysenka 02.02.2024 

import SwiftUI

struct TabBar: View {
    @State private var activeTab: Tab = .main
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            TabView(selection: $activeTab) {
                ContentView()
                    .setUpTab(.main)
                
                Text("Каталог")
                    .setUpTab(.catalog)
                
                Text("Корзина")
                    .setUpTab(.cart)
                
                Text("Профиль")
                    .setUpTab(.profile)
            }
            
            CustomTabBar()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
                .padding(.bottom, -5)
        }
    }
    
    @ViewBuilder func CustomTabBar() -> some View {
        HStack {
            ForEach(Tab.allCases) { tab in
                VStack {
                    Image(systemName: tab.rawValue)
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                    
                    Text(tab.title)
                        .font(.system(size: 12, weight: .bold, design: .rounded))
                }
                .foregroundColor(activeTab == tab ? .green : .gray)
                .onTapGesture {
                    activeTab = tab
                }
                .frame(maxWidth: .infinity)
            }
        }
        .background(Color.white)
    }
}

#Preview {
    TabBar()
}
