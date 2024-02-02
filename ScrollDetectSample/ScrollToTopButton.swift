//
//  ScrollToTopButton.swift
//  ScrollDetectSample
//
//  Created by Takuya Aso on 2024/02/02.
//

import SwiftUI

struct ScrollToTopButton: View {
    var onTap: (() -> Void)? = nil

    var body: some View {
        Button {
            onTap?()
        } label: {
            ZStack {
                Circle()
                    .fill(Color.white)
                    .frame(width: 52.0, height: 52.0)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: .zero, y: 1.0)

                VStack(spacing: 4.0) {
                    Image(systemName: "chevron.up")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 16.0)

                    Text("TOP")
                        .font(.footnote)
                }
                .foregroundStyle(.black)
            }
        }
    }
}

#Preview {
    ScrollToTopButton()
}
