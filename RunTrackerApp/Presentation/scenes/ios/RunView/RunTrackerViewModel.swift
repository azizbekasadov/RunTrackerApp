//
//  RunTrackerViewModel.swift
//  RunTrackerApp
//
//  Created by Azizbek Asadov on 01.10.2025.
//

import MapKit
import SwiftUI
import Combine
import Observation

@Observable
final class RunTrackerViewModel: NSObject {
    var region: MKCoordinateRegion = MKCoordinateRegion(
        center: .stMoritz,
        span: MKCoordinateSpan(
            latitudeDelta: 0.01,
            longitudeDelta: 0.01
        )
    )
    
    @ObservationIgnored
    private var locationManager: CLLocationManager?
    
    @ObservationIgnored
    private var startLocation: CLLocation?
    
    @ObservationIgnored
    private var endLocation: CLLocation?
    
    var shouldShowCountDown = false
    
    override init() {
        super.init()
        
        Task { @MainActor in
            locationManager = CLLocationManager()
            locationManager?.delegate = self
            locationManager?.requestWhenInUseAuthorization()
            locationManager?.startUpdatingLocation()
        }
    }
}

extension RunTrackerViewModel: CLLocationManagerDelegate {
    func locationManager(
        _ manager: CLLocationManager,
        didUpdateLocations locations: [CLLocation]
    ) {
        guard let location = locations.first else {
            return
        }
        
        Task { @MainActor in
            region.center = location.coordinate
        }
        
        if startLocation == nil {
            startLocation = location
            endLocation = location
            return
        }
        
        endLocation = location
    }
}
