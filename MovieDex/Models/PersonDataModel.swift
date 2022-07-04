//
//  PersonDataModel.swift
//  MovieDex
//
//  Created by Admin on 20.06.2022.
//

import Foundation

struct Person: MDBItem {
    
    var id: Int
    let type: MDBItemType = .person
    let name: String
    let gender: Int
    let profilePath: String
    let popularity: Double
    let birthday: String?
    let deathday: String?
    
    private enum CodingKeys: String, CodingKey {
        case id, name, gender, profilePath, popularity, birthday, deathday
    }
    
    var titleString: String {
        return name
    }
    
    var dateString: Date? {
        if let day = birthday,
              !day.isEmpty {
                return dateFormatter.date(from: day)
        } else {
            return nil
    }
        
    }
    
    var descriptionString: String {
        return "Gender: \(gender)"
    }
    
    var ratingString: Double {
        return popularity
    }
    
    var mainImagePath: String? {
        return profilePath
    }
    
}
