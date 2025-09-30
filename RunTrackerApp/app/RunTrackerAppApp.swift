//
//  RunTrackerAppApp.swift
//  RunTrackerApp
//
//  Created by Azizbek Asadov on 30.09.2025.
//

import SwiftUI

@main
struct RunTrackerAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                RunTabView()
            }
        }
    }
}
