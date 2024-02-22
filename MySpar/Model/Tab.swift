// Created by Vlad Lysenka 02.02.2024 

import SwiftUI

enum Tab: String, CaseIterable, Identifiable {
    case main    = "tree.circle"
    case catalog = "circle.grid.2x2"
    case cart    = "cart"
    case profile = "person"
    
    var title: String {
        switch self {
        case .main   : "Главная"
        case .catalog: "Каталог"
        case .cart   : "Корзина"
        case .profile: "Профиль"
        }
    }
    
    var id: Self { self }
}
