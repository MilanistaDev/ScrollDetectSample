//
//  StationDataManager.swift
//  ScrollDetectSample
//
//  Created by Takuya Aso on 2024/02/02.
//

import Foundation

final class StationDataManager {

    /// JSON -> Model
    /// - Parameter completion: [StationInfo]
    func getStationInfoList(completion: @escaping ([StationInfo]) -> Void) {

        guard let path = Bundle.main.path(forResource: "TozaiLineData", ofType: "json") else {
            return
        }
        let url = URL(fileURLWithPath: path)
        do {
            let data = try Data(contentsOf: url)
            let stationData = try JSONDecoder().decode([StationInfo].self, from: data)
            DispatchQueue.main.async {
                completion(stationData)
            }
        } catch {
            print("json convert failed in JSONDecoder.")
        }
    }
}
