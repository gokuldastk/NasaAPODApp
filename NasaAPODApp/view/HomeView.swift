//
//  HomeView.swift
//  NasaAPODApp
//
//  Created by Gokul on 15/12/25.
//

import SwiftUI

struct HomeView: View {

    @StateObject private var viewModel = APODViewModel()

    var body: some View {
        NavigationStack {
            VStack {
                DatePicker(
                    "Select Date",
                    selection: $viewModel.selectedDate,
                    in: Date.apodRange,
                    displayedComponents: .date
                )
                .datePickerStyle(.compact)
                .padding()
                .onChange(of: viewModel.selectedDate) { _ in
                    viewModel.fetchAPOD()
                }

                if viewModel.isLoading {
                    ProgressView("Loading...")
                        .padding()
                } else if let apod = viewModel.apod {
                    APODContentView(apod: apod)
                } else if let error = viewModel.errorMessage {
                    ErrorView(message: error, retryAction: viewModel.fetchAPOD)
                }
            }
            .navigationTitle("NASA APOD")
        }
    }
}
