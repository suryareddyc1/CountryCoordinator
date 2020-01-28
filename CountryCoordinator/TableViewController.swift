//
//  ViewController.swift
//  CountryCoordinator
//
//  Created by Suriya Reddy on 24/01/20.
//  Copyright © 2020 Suriya Reddy. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire
import PromiseKit

class TableViewController: UITableViewController, Storyboarded {
    var coordinator: MainCoordinator?
    var countriesList = [CountryAPI.Country]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Country List"
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        _ = CountryAPI().getCountryList().done({ (country) in
         self.countriesList = country
        self.tableView.reloadData()
            })
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
       return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.countriesList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: "countryList", for: indexPath)
        tableViewCell.textLabel?.text = self.countriesList[indexPath.row].name
        tableViewCell.detailTextLabel?.text = self.countriesList[indexPath.row].alpha3Code
        
        return tableViewCell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       
        self.coordinator?.deatailViewController(from: self.countriesList[indexPath.row])
       
        
    }
     
}

