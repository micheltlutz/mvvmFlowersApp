//
//  Flower.swift
//  FlowersApp
//
//  Created by Michel Anderson Lutz Teixeira on 28/02/2018.
//  Copyright © 2018 Mohammad Azam. All rights reserved.
//

import Foundation

class Flower {
    
    var name :String!
    var description :String!
    
    init?(dictionary :JSONDictionary) {
        
        guard let name = dictionary["name"] as? String,
            let description = dictionary["description"] as? String else {
                return
        }
        
        self.name = name
        self.description = description
    }
}
