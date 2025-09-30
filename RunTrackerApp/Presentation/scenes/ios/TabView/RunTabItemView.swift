//
//  RunTabItemView.swift
//  RunTrackerApp
//
//  Created by Azizbek Asadov on 01.10.2025.
//

import SwiftUI

struct RunTabItemView: View {
    let tab: TabBarType
    
    var body: some View {
        VStack {
            Image(systemName: tab.icon)
                .resizable()
                .frame(width: 24, height: 24)
            
            Text(tab.title)
                .font(.subheadline)
        }
    }
}
