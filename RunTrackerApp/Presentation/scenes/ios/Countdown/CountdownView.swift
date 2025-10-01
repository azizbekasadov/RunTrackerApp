//
//  CountdownView.swift
//  RunTrackerApp
//
//  Created by Azizbek Asadov on 01.10.2025.
//

import SwiftUI

struct CountdownView: View {
//    @EnvironmentObject var runTracker: RunTracker
    
    @Environment(\.dismiss) private var dismiss
    @State private var timer: Timer?
    @State private var countDown: Int = 3
    
    var body: some View {
        Text(countDown.formatted())
            .font(.system(size: 256))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.accent)
            .onAppear {
                setupCountDown()
            }
    }
    
    private func setupCountDown() {
        timer = Timer.scheduledTimer(
            withTimeInterval: 1,
            repeats: false,
            block: { _ in
                if countDown <= 1 {
                    timer?.invalidate()
                    timer = nil
                    
                    dismiss.callAsFunction()
                } else {
                    countDown -= 1
                }
            }
        )
    }
}

#Preview {
    CountdownView()
}
