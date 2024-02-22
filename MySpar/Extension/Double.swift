// Created by Vlad Lysenka 22.02.2024 

import SwiftUI

extension Double {
    
    // MARK: Specifier
    func specifier(for number: Int = 0) -> String {
        return String(format: "%.\(number)f", self)
    }
    
}
