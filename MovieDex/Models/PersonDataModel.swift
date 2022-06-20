//
//  PersonDataModel.swift
//  MovieDex
//
//  Created by Admin on 20.06.2022.
//

import Foundation

struct Person: MDBItem {
    
    var id: Int
    let name: String
    let gender: Int
    let profilePath: String
    let popularity: Double
    
    var titleString: String {
        return name
    }
    
    var dateString: Date? {
        return nil
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
