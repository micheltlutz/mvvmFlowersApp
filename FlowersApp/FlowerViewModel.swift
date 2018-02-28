//
//  FlowerViewModel.swift
//  FlowersApp
//
//  Created by Michel Anderson Lutz Teixeira on 28/02/2018.
//  Copyright © 2018 Mohammad Azam. All rights reserved.
//

import Foundation

class FlowerViewModel {
    var name: String!
    var description: String!
    
    init(flower: Flower){
        name = flower.name
        description = flower.description
    }
}
