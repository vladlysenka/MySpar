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
    let production: String
    let energyValue: [Int]
    let fats: Double
    let squirrels: Double
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


extension Product {
    
    static var product: Product = Product(
        name    : "Добавка \"Липа к чаю\"",
        price   : 55.9,
        oldPrice: 130.2,
        wieght: 200,
        country: "Испания, Риоха",
        countryImage: "Spain",
        image: "tea",
        description: "Флавоноиду липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов",
        isDiscount: true,
        discount: 5,
        сharacteristics: Characteristics(
            production: "Россия, Краснодарский край",
            energyValue: [25, 105],
            fats: 0.1,
            squirrels: 1.3,
            carbohydrates: 3.3
        ),
        reviews: Reviews(
            rating: 4.2,
            count: 19,
            review: [
            Review(name: "Александр В.", date: "7 мая 2021", description: "Хорошая добавка, мне очень понравилось! Хочу, чтобы все добавки были такими", rating: 5),
            Review(name: "Александр В.", date: "7 мая 2021", description: "Хорошая добавка, мне очень понравилось! Хочу, чтобы все добавки были такими", rating: 5),
            Review(name: "Александр В.", date: "7 мая 2021", description: "Хорошая добавка, мне очень понравилось! Хочу, чтобы все добавки были такими", rating: 5),
            Review(name: "Александр В.", date: "7 мая 2021", description: "Хорошая добавка, мне очень понравилось! Хочу, чтобы все добавки были такими", rating: 5),
            Review(name: "Александр В.", date: "7 мая 2021", description: "Хорошая добавка, мне очень понравилось! Хочу, чтобы все добавки были такими", rating: 5),
            ]
        )
    )
    
    static var sample: [Product] = [
        Product(
            name    : "Добавка \"Липа к чаю\"",
            price   : 55.9,
            oldPrice: 130.2,
            wieght: 200,
            country: "Испания, Риоха",
            countryImage: "Spain",
            image: "tea",
            description: "Флавоноиду липового цвета обладают противовоспалительным действием, способствуют укреплению стенки сосудов",
            isDiscount: true,
            discount: 5,
            сharacteristics: Characteristics(
                production: "Россия, Краснодарский край",
                energyValue: [25, 105],
                fats: 0.1,
                squirrels: 1.3,
                carbohydrates: 3.3
            ),
            reviews: Reviews(
                rating: 4.2,
                count: 19,
                review: [
                Review(name: "Александр В.", date: "7 мая 2021", description: "Хорошая добавка, мне очень понравилось! Хочу, чтобы все добавки были такими", rating: 5),
                Review(name: "Александр В.", date: "7 мая 2021", description: "Хорошая добавка, мне очень понравилось! Хочу, чтобы все добавки были такими", rating: 5),
                Review(name: "Александр В.", date: "7 мая 2021", description: "Хорошая добавка, мне очень понравилось! Хочу, чтобы все добавки были такими", rating: 5),
                Review(name: "Александр В.", date: "7 мая 2021", description: "Хорошая добавка, мне очень понравилось! Хочу, чтобы все добавки были такими", rating: 5),
                Review(name: "Александр В.", date: "7 мая 2021", description: "Хорошая добавка, мне очень понравилось! Хочу, чтобы все добавки были такими", rating: 5),
                ]
            )
        )
    ]
    
}
