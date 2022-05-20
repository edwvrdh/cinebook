//
//  Movie.swift
//  CineBook
//
//  Created by Edward Huang on 15/5/22.
//

import UIKit

struct Movie {
    let name: String
    let image: UIImage
    let ID: Int

}

let movies: [Movie] =
[
    Movie(name: "The Lost City", image: UIImage(named: "lostcity")!, ID: 453395),
    Movie(name: "Doctor Strange in the Multiverse of Madness", image: UIImage(named: "doctor")!, ID: 453395),
    Movie(name: "Sonic the Hedgehog 2", image: UIImage(named: "sonic")!, ID: 453395),
    Movie(name: "Firestarter", image: UIImage(named:"firestarter")!, ID: 453395),
    Movie(name: "Top Gun: Maverick", image: UIImage(named:"topgun")!, ID: 453395)
]
