//
//  Destination.swift
//  RunTrackerApp
//
//  Created by Azizbek Asadov on 30.09.2025.
//

import Foundation

enum Destination: String, Identifiable {
    case settings
    
    var id: String {
        self.rawValue
    }
}
