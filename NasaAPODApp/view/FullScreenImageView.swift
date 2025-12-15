//
//  FullScreenImageView.swift
//  NasaAPODApp
//
//  Created by Gokul on 15/12/25.
//

import SwiftUI

struct FullScreenImageView: View {
    let imageURL: String

    var body: some View {
        ScrollView([.horizontal, .vertical]) {
            AsyncImage(url: URL(string: imageURL)) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
        }
        .navigationTitle("Image")
        .navigationBarTitleDisplayMode(.inline)
    }
}
