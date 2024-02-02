//
//  StationRow.swift
//  ScrollDetectSample
//
//  Created by Takuya Aso on 2024/02/02.
//

import SwiftUI

struct StationRow: View {
    let stationInfo: StationInfo

    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            upperPart()

            addressPart()

            transferPart()
        }
        .padding(.top, 8.0)
        .padding(.bottom, 20.0)
        .overlay(alignment: .bottom) {
            Divider()
        }
    }
}

extension StationRow {
    private func upperPart() -> some View {
        HStack(spacing: 12.0) {
            Rectangle()
                .fill(Color("tozaiLineSky"))
                .frame(width: 12.0, height: 60.0)

            VStack(alignment: .leading, spacing: 4.0) {
                Text("東京メトロ 東西線")
                    .font(.subheadline)

                HStack(spacing: 8.0) {
                    Image(stationInfo.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 28.0, height: 28.0)

                    Text(stationInfo.stationName)
                        .font(.headline)

                    Spacer()
                }
            }
        }
    }

    private func addressPart() -> some View {
        HStack(spacing: 8.0) {
            Image(systemName: "mappin.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 20.0, height: 20.0)

            VStack(alignment: .leading, spacing: 4.0) {
                Text(stationInfo.postalCode)

                Text(stationInfo.address)
            }
            .font(.footnote)
        }
    }

    private func transferPart() -> some View {
        HStack(spacing: 8.0) {
            Image(systemName: "tram.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 20.0, height: 20.0)

            VStack(alignment: .leading, spacing: 4.0) {
                Text(stationInfo.transfer)
            }
            .font(.footnote)
        }
    }
}

#Preview {
    StationRow(stationInfo: sampleStationInfo)
}
