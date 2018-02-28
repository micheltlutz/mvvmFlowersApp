//
//  Webservice.swift
//  FlowersApp
//
//  Created by Mohammad Azam on 12/14/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation

private var url = URL(string: "https://flowers.vapor.cloud/flowers")!

typealias JSONDictionary = [String:Any]

class Webservice {
    
    func loadFlowers(completion :@escaping ([Flower]) -> ()) {
        
        URLSession.shared.dataTask(with: url) { data, _, _ in
            
            if let data = data {
                
                let json = try! JSONSerialization.jsonObject(with: data, options: [])
                let dictionaries = json as! [JSONDictionary]
                
                DispatchQueue.main.async {
                    completion(dictionaries.flatMap(Flower.init))
                }
                
            }
            
        }.resume()
        
    }
    
}
