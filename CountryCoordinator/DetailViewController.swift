//
//  DetailViewController.swift
//  CountryCoordinator
//
//  Created by Suriya Reddy on 24/01/20.
//  Copyright © 2020 Suriya Reddy. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, Storyboarded {
    
    @IBOutlet weak var countryNameLabel: UILabel!
    @IBOutlet weak var countryCodeLabel: UILabel!
    
    var country: CountryAPI.Country?
    var coordinator: MainCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.countryNameLabel.text = country?.name
        self.countryCodeLabel.text = country?.alpha3Code
        
    }
    
}
