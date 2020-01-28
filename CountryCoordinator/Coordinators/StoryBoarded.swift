//
//  StoryBoarded.swift
//  CountryCoordinator
//
//  Created by Suriya Reddy on 24/01/20.
//  Copyright © 2020 Suriya Reddy. All rights reserved.
//

import UIKit


protocol Storyboarded {
    static func instantiate() -> Self
    
}

extension Storyboarded where Self: Any {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        return storyBoard.instantiateViewController(identifier: id) as! Self
    }
    
}
