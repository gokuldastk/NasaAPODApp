//
//  APODViewModel.swift
//  NasaAPODApp
//
//  Created by Gokul on 15/12/25.
//

import Foundation
import SwiftUI
import Combine

@MainActor
final class APODViewModel: ObservableObject {

    @Published var apod: APOD?
    @Published var isLoading = false
    @Published var errorMessage: String?
    @Published var selectedDate = Date()

    private let service: APODAPIServiceProtocol

    init(service: APODAPIServiceProtocol = APODAPIService()) {
        self.service = service
        fetchAPOD()
    }

    func fetchAPOD() {
        guard selectedDate.isValidAPODDate else {
            errorMessage = "Selected date is invalid"
            return
        }

        isLoading = true
        errorMessage = nil

        Task {
            do {
                apod = try await service.fetchAPOD(for: selectedDate)
            } catch {
                errorMessage = error.localizedDescription
            }
            isLoading = false
        }
    }
}
