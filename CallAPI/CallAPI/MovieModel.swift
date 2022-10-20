//
//  MovieModel.swift
//  CallAPI
//
//  Created by Adem Tarhan on 20.10.2022.
//

import Foundation

struct Movie: Codable {
    let results: [MovieResult]
}

struct MovieResult: Codable {
    
    let overview: String
    let releaseDate: String
    let posterPath, title: String
    let voteAverage: Double

    enum CodingKeys: String, CodingKey {
        case overview
        case posterPath = "poster_path"
        case releaseDate = "release_date"
        case title
        case voteAverage = "vote_average"
    }
}
