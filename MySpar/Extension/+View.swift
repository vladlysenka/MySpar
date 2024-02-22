// Created by Vlad Lysenka 22.02.2024 

import SwiftUI

extension View {
    
    // MARK: Tab Bar
    @ViewBuilder func setUpTab(_ tab: Tab) -> some View {
        self
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .tag(tab)
    }
    
}
