//
//  FlowersListViewModel.swift
//  FlowersApp
//
//  Created by Michel Anderson Lutz Teixeira on 28/02/2018.
//  Copyright © 2018 Mohammad Azam. All rights reserved.
//

import Foundation

class FlowersListViewModel {
    
    var flowers: [FlowerViewModel] = [FlowerViewModel]()
    
    init(webservice: Webservice, completion: @escaping () -> ()){
        Webservice().loadFlowers { flowers in
            self.flowers = flowers.map(FlowerViewModel.init)
            DispatchQueue.main.async {
                completion()
            }
            //self.flowersListViewModel.populateFlowers(flowers)
        }
    }
    
    /*
    init(_ flowers: [Flower]) {
        
        self.flowers = flowers.map(FlowerViewModel.init)
    }
     */
    
    func populateFlowers(_ flowers: [Flower]){
        self.flowers = flowers.map(FlowerViewModel.init)
    }
}
