//
//  MovieDataModel.swift
//  MovieDex
//
//  Created by Admin on 20.06.2022.
//

import Foundation

struct Movie: MDBItem {
    
    var id: Int
    var type: MDBItemType = .movie
    let originalTitle: String
    let title: String
    let overview: String
    let posterPath: String?
    let releaseDate: String
    let voteAverage: Double
    let voteCount: Int
    
    let backdropPath: String?
    let runtime: Int?
    let tagline: String?
    
    let genres: [Genre]?
    
    private enum CodingKeys: String, CodingKey {
        case id, originalTitle, title, overview, posterPath, releaseDate, voteAverage, voteCount, backdropPath, runtime, tagline, genres
    }
    
    var dateString: Date? {
        if releaseDate.isEmpty {
            return nil
        } else {
            return dateFormatter.date(from: releaseDate)
        }
    }
    
    var timeString: String? {
        guard let runtime = runtime, runtime > 0 else { return nil }
        return timeFormatter.string(from: TimeInterval(runtime * 60))
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
    
}

struct Genre: Decodable {
    let id: Int?
    let name: String?
}

