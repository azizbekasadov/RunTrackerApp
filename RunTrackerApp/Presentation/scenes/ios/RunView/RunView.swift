//
//  RunView.swift
//  RunTrackerApp
//
//  Created by Azizbek Asadov on 30.09.2025.
//

import SwiftUI
import MapKit

// Location: 46.4908° N, 9.8355° E
// St. Moritz, K. Graubünden, Schwiiz

struct RunView: View {
    @State private var viewModel = RunTrackerViewModel()
    
    @ViewBuilder
    private func MapView() -> some View {
        Map(
            coordinateRegion: $viewModel.region,
            showsUserLocation: true
        )
    }
    
    @ViewBuilder
    private func StartButton() -> some View {
        Button {
            
        } label: {
            Text("Start")
                .bold()
                .font(.headline)
                .foregroundStyle(.white)
                .frame(maxWidth: .infinity)
        }
        .frame(height: 50)
        .background(Color.primary)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                MapView()
                
                VStack {
                    Spacer()
                    
                    StartButton()
                }
                .padding([.bottom, .horizontal], 24)
            }
        }
        .navigationTitle("Run")
    }
}

#Preview {
    NavigationStack {
        RunView()
            .ignoresSafeArea(edges: .bottom)
    }
}
