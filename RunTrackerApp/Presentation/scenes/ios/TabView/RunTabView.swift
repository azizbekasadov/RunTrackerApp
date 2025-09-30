//
//  RunTabView.swift
//  RunTrackerApp
//
//  Created by Azizbek Asadov on 01.10.2025.
//

import SwiftUI

struct RunTabView: View {
    @State private var selection: Int = 0
    
    var body: some View {
        TabView(selection: $selection) {
            RunView()
                .tag(0)
                .tabItem {
                    RunTabItemView(tab: .home)
                        .foregroundStyle(selection == 0 ? Color.accent : Color.secondary)
                }
            
        }
    }
}

#Preview {
    RunTabView()
}
