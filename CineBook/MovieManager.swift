//
//  MovieManager.swift
//  CineBook
//
//  Created by Edward Huang on 21/5/22.
//

import Foundation

class MovieManager {
    
    private var dataTask: URLSessionDataTask?
    
    let movieURL = "https://api.themoviedb.org/3/movie/"
    
    func getMovieDetails(ID: Int) {
    
        let urlString = "\(movieURL)\(ID)?api_key=890fe93c18fdae6d6dd0986ea033a867&language=en-US"
        
        URLSession.shared.dataTask(with: URL(string: urlString)!) { data, response, error in
            guard let data = data, error == nil else { return }
        }
        
        var result: MyResult
    }
    
    struct Response: Codable {
        let response: MyResult
        let status: String
    }
    
    struct MyResult: Codable {
        let overview: String
    }
}
