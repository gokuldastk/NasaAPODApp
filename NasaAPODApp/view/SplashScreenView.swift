//
//  SplashScreenView.swift
//  NasaAPODApp
//
//  Created by Gokul on 15/12/25.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            // Background gradient
            LinearGradient(
                gradient: Gradient(colors: [
                    Color(red: 10/255, green: 15/255, blue: 44/255),
                    Color(red: 31/255, green: 42/255, blue: 109/255)  
                ]),
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()

            // Logo placeholder
            VStack {
                Image("AppLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 160, height: 160)
            }
        }
    }
}

