//
//  FlowersTableViewController.swift
//  FlowersApp
//
//  Created by Mohammad Azam on 12/11/17.
//  Copyright © 2017 Mohammad Azam. All rights reserved.
//

import Foundation
import UIKit

class FlowersTableViewController : UITableViewController {
    
    private var flowersListViewModel: FlowersListViewModel!
    private var webservice: Webservice = Webservice()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        flowersListViewModel = FlowersListViewModel(webservice: self.webservice){
            self.tableView.reloadData()
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return flowersListViewModel.flowers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let flower = flowersListViewModel.flowers[indexPath.row]
        
        cell.textLabel?.text = flower.name
        return cell
    }
}
