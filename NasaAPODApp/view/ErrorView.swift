//
//  ErrorView.swift
//  NasaAPODApp
//
//  Created by Gokul on 15/12/25.
//

import SwiftUI

struct ErrorView: View {
    let message: String
    let retryAction: () -> Void

    var body: some View {
        VStack(spacing: 12) {
            Text(message)
                .foregroundColor(.red)
                .multilineTextAlignment(.center)

            Button("Retry", action: retryAction)
        }
        .padding()
    }
}
