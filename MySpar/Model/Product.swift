// Created by Vlad Lysenka 15.02.2024 

import SwiftUI

struct Product: Codable, Identifiable, Hashable {
    
    var id = UUID().uuidString
    let name           : String
    let price          : Double
    let oldPrice       : Double
    let wieght         : Int
    let country        : String
    let countryImage   : String
    let image          : String
    let description    : String
    let isDiscount     : Bool
    let discount       : Int
    let сharacteristics: Characteristics
    let reviews        : Reviews

}

struct Characteristics: Codable, Hashable {
    let production   : String
    let energyValue  : String
    let fats         : Double
    let protein      : Double
    let carbohydrates: Double
}

struct Reviews: Codable, Hashable {
    let rating: Double
    let count: Int
    let review: [Review]
}

struct Review: Codable, Hashable {
    var id = UUID().uuidString
    let name: String
    let date: String
    let description: String
    let rating: Int
}


