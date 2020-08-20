//
//  Business.swift
//  BusinessTiles
//
//  Created by Anthony MARINGO on 8/19/20.
//  Copyright © 2020 Anthony Maringo. All rights reserved.
//

import SwiftUI

struct Business: Hashable, Codable, Identifiable{
    var id: Int
    var name:String
    var imageName:String
    var category:Category
    var description:String
    var numberOfPeopleAttending:Int
    var fireRating:Int
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
        case party = "party"
        case business = "business"
    }
    
    
}
