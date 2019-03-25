//
//  WeatherLocation.swift
//  WeatherGift
//
//  Created by David Yépez on 3/25/19.
//  Copyright © 2019 David Yepez. All rights reserved.
//

import Foundation
 

Class WeatherLocation: Codable {
    var name = ""
    var coordinates = ""
    
    init(name: String coordinates: String) {
        self.name = name
        self.coordinates = coordinates
    }
}
