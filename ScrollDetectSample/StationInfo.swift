//
//  StationInfo.swift
//  ScrollDetectSample
//
//  Created by Takuya Aso on 2024/02/02.
//

import Foundation

struct StationInfo: Decodable {
    let address: String
    let imageName: String
    let latitude: Double
    let longitude: Double
    let postalCode: String
    let prefectureCode: Int
    let stationName: String
    let stationNameEn: String
    let url: String
    let transfer: String
}

let sampleStationInfo = StationInfo(
    address: "東京都中野区中野5-31-1",
    imageName: "T01",
    latitude: 35.70578,
    longitude: 139.66575,
    postalCode: "〒164-0001",
    prefectureCode: 13,
    stationName: "中野",
    stationNameEn: "Nakano",
    url: "https://www.tokyometro.jp/station/nakano/index.html",
    transfer: "JR線・東西線"
)
