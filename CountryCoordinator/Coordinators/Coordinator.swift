//
//  Coordinator.swift
//  CountryCoordinator
//
//  Created by Suriya Reddy on 24/01/20.
//  Copyright © 2020 Suriya Reddy. All rights reserved.
//

import UIKit

protocol Coordinator: AnyObject {
    var childCoordnator: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
