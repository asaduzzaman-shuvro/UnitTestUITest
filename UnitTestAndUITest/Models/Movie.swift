//
//  Movie.swift
//  UnitTestAndUITest
//
//  Created by SHUVRO on 2/18/18.
//  Copyright © 2018 SHUVRO. All rights reserved.
//

import Foundation

enum Genre : String {
    case animation
    case action
    case none
}

struct Movie {
    var title: String
    var genre: Genre
}

class MovieHelper {
    static func getMovies() -> [Movie] {
        return [
            Movie(title: "The Emoji Movie", genre: .animation),
            Movie(title: "Logan", genre: .action),
            Movie(title: "Wonder Woman", genre: .action),
            Movie(title: "Zootopia", genre: .animation),
            Movie(title: "The Baby Boss", genre: .animation),
            Movie(title: "Despicable Me 3", genre: .animation),
            Movie(title: "Spiderman: Homecoming", genre: .action),
            Movie(title: "Dunkirk", genre: .animation)
        ]
    }
}
