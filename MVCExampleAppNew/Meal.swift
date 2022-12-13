//
//  Meal.swift
//  MVCExampleAppNew
//
//  Created by Sergey Kosichkin on 12.12.2022.
//

struct Meal {
    let name: String
    let description: String
    let image: String
    let rating: Int
    let price: String
    
    var ratingBar: String {
        String(repeating: "⭐️", count: rating)
    }
    
}



extension Meal {
    static func getMeal() -> Meal {
        Meal(name: "Bean soup",
             description: "Very tasty soup. You won't regret buying it!",
             image: "bean soup",
             rating: 7,
             price: "130.00 Roubles / 250 gr.")
    }
}
