// Created by Vlad Lysenka 22.02.2024 

import SwiftUI

extension Product {
    
    
    static var sample: Product = Product(
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
            energyValue: "25 ккал, 105 кДж",
            fats: 0.1,
            protein: 1.3,
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
    
    
    static var samples: [Product] = [
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
                energyValue: "25 ккал, 105 кДж",
                fats: 0.1,
                protein: 1.3,
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
