// Created by Vlad Lysenka 02.02.2024 

import SwiftUI

extension View {
    // MARK: Tab Bar
    @ViewBuilder func setUpTab(_ tab: Tab) -> some View {
        self
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .tag(tab)
    }
}

extension Double {
    func specifier(for number: Int = 0) -> String {
        return String(format: "%.\(number)f", self)
    }
}
