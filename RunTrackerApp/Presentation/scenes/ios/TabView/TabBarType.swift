//
//  TabBarType.swift
//  RunTrackerApp
//
//  Created by Azizbek Asadov on 01.10.2025.
//

import Foundation

enum TabBarType: String, CaseIterable, Identifiable {
    case home
    
    var id: String {
        rawValue
    }
    
    var icon: String {
        switch self {
        case .home:
            "figure.run"
        }
    }
    
    var title: String {
        switch self {
        case .home:
            "Run"
        }
    }
}
