//
//  MovieCollectionViewCell.swift
//  CineBook
//
//  Created by Edward Huang on 15/5/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieLabel: UILabel!
    
    func setup(with movie: Movie) {
        movieImageView.image = movie.image
        movieLabel.text = movie.name
    }
    
}
