//
//  StationListView.swift
//  ScrollDetectSample
//
//  Created by Takuya Aso on 2024/02/02.
//

import SwiftUI

struct StationListView: View {
    @StateObject private var viewModel = StationListViewModel()

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.stationList, id: \.imageName) { stationinfo in
                        StationRow(stationInfo: stationinfo)
                    }
                }
                .padding(.vertical, 20.0)
                .padding(.leading, 32.0)
            }
            .navigationTitle("東西線駅リスト")
            .navigationBarTitleDisplayMode(.large)
            .overlay(alignment: .bottomTrailing) {
                ScrollToTopButton {
                    // TODO: Scroll To Top
                }
                .padding(.trailing, 16.0)
                .padding(.bottom, 16.0)
            }
        }
        .onAppear {
            viewModel.getStationList()
        }
    }
}

#Preview {
    StationListView()
}
