//
//  NetworkError.swift
//  NasaAPODApp
//
//  Created by Gokul on 15/12/25.
//

import Foundation

enum NetworkError: LocalizedError {
    case invalidURL
    case invalidResponse
    case noData

    var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Invalid URL"
        case .invalidResponse:
            return "Invalid server response"
        case .noData:
            return "No data received"
        }
    }
}
