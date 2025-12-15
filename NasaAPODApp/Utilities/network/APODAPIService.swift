//
//  Untitled.swift
//  NasaAPODApp
//
//  Created by Gokul on 15/12/25.
//

import Foundation

protocol APODAPIServiceProtocol {
    func fetchAPOD(for date: Date) async throws -> APOD
}

final class APODAPIService: APODAPIServiceProtocol {

    private let apiKey = Constants.apiKey

    func fetchAPOD(for date: Date) async throws -> APOD {
        let dateString = date.formattedAPODDate
        let urlString = "https://api.nasa.gov/planetary/apod?api_key=\(apiKey)&date=\(dateString)&hd=true"
//        https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY&date=2025-12-15

        guard let url = URL(string: urlString) else {
            throw NetworkError.invalidURL
        }

        let (data, response) = try await URLSession.shared.data(from: url)

        guard let httpResponse = response as? HTTPURLResponse,
              (200...299).contains(httpResponse.statusCode) else {
            throw NetworkError.invalidResponse
        }

        let decoder = JSONDecoder()
        return try decoder.decode(APOD.self, from: data)
    }
}
