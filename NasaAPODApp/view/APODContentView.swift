//
//  APODContentView.swift
//  NasaAPODApp
//
//  Created by Gokul on 15/12/25.
//

import SwiftUI

struct APODContentView: View {
    let apod: APOD

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {

                if apod.mediaType == .image {
                    NavigationLink {
                        FullScreenImageView(imageURL: apod.hdurl ?? apod.url)
                    } label: {
                        AsyncImage(url: URL(string: apod.url)) { image in
                            image
                                .resizable()
                                .scaledToFit()
                        } placeholder: {
                            ProgressView()
                        }
                    }
                } else {
                    Link("Open Video", destination: URL(string: apod.url)!)
                }

                Text(apod.title)
                    .font(.title2)
                    .bold()

                Text(apod.explanation)
                    .font(.body)

                Text("Date: \(apod.date)")
                    .font(.caption)

                if let copyright = apod.cleanedCopyright {
                    Text("© \(copyright)")
                        .font(.caption2)
                        .foregroundColor(.secondary)
                }
            }
            .padding()
        }
    }
}
