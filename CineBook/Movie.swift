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
}

let movies: [Movie] =
[
    Movie(name: "Doctor Strange in the Multiverse of Madness", image: UIImage(named: "strange")!),
    Movie(name: "The Lost City", image: UIImage(named: "lostcity")!),
    Movie(name: "Sonic the Hedgehog 2", image: UIImage(named: "sonic")!)
]
