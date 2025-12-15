//
//  APOD.swift
//  NasaAPODApp
//
//  Created by Gokul on 15/12/25.
//

import Foundation

struct APOD: Codable, Identifiable {
    let id = UUID()
    let title: String
    let explanation: String
    let date: String
    let mediaType: MediaType
    let url: String
    let hdurl: String?
    let copyright: String?

    enum CodingKeys: String, CodingKey {
        case title
        case explanation
        case date
        case url
        case hdurl
        case copyright
        case mediaType = "media_type"
    }
}

enum MediaType: String, Codable {
    case image
    case video
}

extension APOD {
    var cleanedCopyright: String? {
        copyright?
            .trimmingCharacters(in: .whitespacesAndNewlines)
    }
}


