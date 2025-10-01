//
//  RunView.swift
//  RunTrackerApp
//
//  Created by Azizbek Asadov on 30.09.2025.
//

import SwiftUI
import MapKit

struct RunView: View {
    @ViewBuilder
    private func HeaderView() -> some View {
        HStack {
            VStack {
                Text("Distance")
            }
            .frame(maxWidth: .infinity)
            
            VStack {
                Text("BPM")
            }
            .frame(maxWidth: .infinity)
            
            VStack {
                Text("Pace")
            }
            .frame(maxWidth: .infinity)
        }
    }
    
    @ViewBuilder
    private func MainCounterView() -> some View {
        Text("00:00")
            .font(.system(size: 64, weight: .medium))
        
        Text("Time")
            .foregroundStyle(.gray)
    }
    
    @ViewBuilder
    private func BottomView() -> some View {
        HStack {
            Button {
                
            } label: {
                Image(systemName: "pause.fill")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                    .background(
                        Circle()
                            .fill(Color.black)
                    )
            }

        }
    }
    
    var body: some View {
        VStack {
            HeaderView()
            Spacer()
            
            MainCounterView()
            
            Spacer()
            
            BottomView()
        }
        .frame(maxWidth: .infinity, alignment: .top)
    }
}

#Preview {
    NavigationStack {
        RunView()
            .ignoresSafeArea(edges: .bottom)
    }
}
