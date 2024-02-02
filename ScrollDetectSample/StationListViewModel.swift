//
//  StationListViewModel.swift
//  ScrollDetectSample
//
//  Created by Takuya Aso on 2024/02/02.
//

import Foundation

final class StationListViewModel: ObservableObject {
    @Published var stationList: [StationInfo] = []

    func getStationList() {
        StationDataManager().getStationInfoList { stationList in
            DispatchQueue.main.async {
                self.stationList = stationList
            }
        }
    }
}
