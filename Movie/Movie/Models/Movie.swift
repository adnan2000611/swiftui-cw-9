//
//  Movie.swift
//  Movie
//
//  Created by Mac on 1/2/21.
//

import Foundation
struct movie : Identifiable{
    let name : String
    let image : String
    let characters : [String]
    var id = UUID()
}

let movies = [
    movie(name: "Home Alone", image: "homealone", characters: ["Macaulay Culkin", "Joe Pesci", "Daniel "]),
    movie(name: "Harry Potter", image: "harrypotter", characters: ["Richard Harris", "Maggie Smith", "Ian Hart"]),
    movie(name: "Fast & Furios", image: "fast&furios", characters: ["Paul Walker", "Vin Diesel", "Rick Yune"])
        
]
