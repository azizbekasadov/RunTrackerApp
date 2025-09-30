//
//  StaticMapLocations.swift
//  RunTrackerApp
//
//  Created by Azizbek Asadov on 30.09.2025.
//

import MapKit

extension CLLocationCoordinate2D {
    static let newYork: Self = .init(
        latitude: 40.730610,
        longitude: -73.935242
    )
    
    static let seattle: Self = .init(
        latitude: 47.608013,
        longitude: -122.335167
    )
    
    static let sanFrancisco: Self = .init(
        latitude: 37.733795,
        longitude: -122.446747
    )
    
    static let stMoritz: Self = CLLocationCoordinate2D(
        latitude: 46.4908,
        longitude: 9.8355
    )
}
