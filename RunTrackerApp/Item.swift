//
//  Item.swift
//  RunTrackerApp
//
//  Created by Azizbek Asadov on 30.09.2025.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
