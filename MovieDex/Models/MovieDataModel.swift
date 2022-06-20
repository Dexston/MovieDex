//
//  MovieDataModel.swift
//  MovieDex
//
//  Created by Admin on 20.06.2022.
//

import Foundation

struct Movie: MDBItem {
    
    var id: Int
    let originalTitle: String
    let title: String
    let overview: String
    let posterPath: String?
    let releaseDate: String
    let voteAverage: Double
    let voteCount: Int
    
    var dateString: Date? {
        if releaseDate.isEmpty {
            return nil
        } else {
            return dateFormatter.date(from: releaseDate)
        }
    }
    
    var titleString: String {
        return title
    }
    
    var descriptionString: String {
        return overview
    }
    
    var ratingString: Double {
        return voteAverage
    }
    
    var mainImagePath: String? {
        if let posterPath = posterPath {
            return posterPath
        } else {
            return nil
        }
    }
    
    //let genres: [Genre]
}

struct MovieDetails: Decodable {
    let backdropPath: String?
    let runtime: Int?
    let tagline: String?
    
}

struct Genre: Decodable {
    let id: Int?
    let name: String?
}

