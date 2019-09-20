//
//  Airport.swift
//  Airport
//
//  Created by Qing-Cheng Li on 2019/9/7.
//  Copyright © 2019 Qing-Cheng Li. All rights reserved.
//

import Foundation

public enum AirportSize {
    case small
    case medium
    case large
}

public struct AirportLocation {
    public let latitude:Double
    public let longitude:Double
    public init(latitude:Double, longitude:Double) {
        self.latitude = latitude
        self.longitude = longitude
    }
}

open class Airport {
    open private(set) var name:String
    open private(set) var location:AirportLocation
    open private(set) var municipality:String
    open private(set) var IATACode:String
    open private(set) var ICAOCode:String
    open private(set) var size:AirportSize
    
    public init() {
        name = "Airport"
        location = AirportLocation(latitude: 0.0, longitude: 0.0)
        municipality = ""
        IATACode = "COD"
        ICAOCode = "CODE"
        size = .small
    }
}

