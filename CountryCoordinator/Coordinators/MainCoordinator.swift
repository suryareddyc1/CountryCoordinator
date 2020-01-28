//
//  MainCoordinator.swift
//  CountryCoordinator
//
//  Created by Suriya Reddy on 24/01/20.
//  Copyright © 2020 Suriya Reddy. All rights reserved.
//

import UIKit


class MainCoordinator: Coordinator {
    
    var childCoordnator = [Coordinator]()
    var navigationController: UINavigationController
    
    init(naviagationController: UINavigationController) {
        self.navigationController = naviagationController
    }
    // MARK: Initiate the TableViewController
    func start() {
        let tablVC = TableViewController.instantiate()
        tablVC.coordinator = self
        navigationController.pushViewController(tablVC, animated: true)
    }
    
    func deatailViewController(from country: CountryAPI.Country) {
        let detailVC = DetailViewController.instantiate()
        detailVC.coordinator = self
        detailVC.country = country
        
        navigationController.pushViewController(detailVC, animated: true)
    }
}
