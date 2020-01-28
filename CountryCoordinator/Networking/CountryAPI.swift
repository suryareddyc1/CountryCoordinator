//
//  CountryAPI.swift
//  CountryCoordinator
//
//  Created by Suriya Reddy on 24/01/20.
//  Copyright © 2020 Suriya Reddy. All rights reserved.
//

import Foundation
import PromiseKit
import Alamofire
import SwiftyJSON

class CountryAPI {
    struct Country: Codable {
        let name: String
        let alpha3Code: String
       
    }
    
    func getCountryList() -> Promise<[Country]> {
        let urlString = "https://restcountries.eu/rest/v2/all"
        let url = URL(string: urlString)!
        
        return Promise<[Country]> { promise in
            Alamofire.request(url, method: .get).responseData() {  res in
                do {
                    guard let data = res.data else
                    {
                        promise.reject(res.error!)
                        return
                    }
                    let coutries = try JSONDecoder().decode([Country].self, from: data)
                    promise.fulfill(coutries)
                }
                catch {
                    print(error.localizedDescription)
                    promise.reject(error)
                }
            
            }
                
        }
    
    }
   
            
    }

        
    
        
        
    

