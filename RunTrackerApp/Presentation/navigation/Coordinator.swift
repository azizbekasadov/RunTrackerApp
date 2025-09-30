//
//  Coordinator.swift
//  RunTrackerApp
//
//  Created by Azizbek Asadov on 30.09.2025.
//

import Foundation

@MainActor
protocol Coordinator {
    func push(_ destination: Destination)
    func pop()
    func popToRoot()
    func presentModal(_ destination: Destination)
}
