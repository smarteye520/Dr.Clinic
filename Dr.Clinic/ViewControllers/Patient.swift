//
//  Recipe.swift
//  TableView
//
//  Created by BILAL ARSLAN on 25.12.2018.
//  Copyright © 2018 Bilal ARSLAN. All rights reserved.
//

import Foundation

struct Patient {
    let name: String
    let thumbnails: String
    let nextTime: String
}

extension Patient {
    static func createPatient() -> [Patient] {
        return [Patient(name: "Egg Benedict", thumbnails: "egg_benedict.jpg", nextTime: "1 hour"),
                Patient(name: "Mushroom Risotto", thumbnails: "mushroom_risotto.jpg", nextTime: "30 min"),
                Patient(name: "Full Breakfast", thumbnails: "full_breakfast.jpg", nextTime: "25 min"),
                Patient(name: "Hamburger", thumbnails: "hamburger.jpg", nextTime: "15 min"),
                Patient(name: "Ham and Egg Sandwich", thumbnails: "ham_and_egg_sandwich.jpg", nextTime: "20 min"),
                Patient(name: "Creme Brelee", thumbnails: "creme_brelee.jpg", nextTime: "10 min"),
                Patient(name: "White Chocolate Donut", thumbnails: "white_chocolate_donut.jpg", nextTime: "1 hour"),
                Patient(name: "Ham and Cheese Panini", thumbnails: "ham_and_cheese_panini.jpg", nextTime: "35 min")]
    }
}
