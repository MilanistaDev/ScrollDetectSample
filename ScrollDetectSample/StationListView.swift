//
//  StationListView.swift
//  ScrollDetectSample
//
//  Created by Takuya Aso on 2024/02/02.
//

import SwiftUI

struct StationListView: View {
    @State private var viewModel = StationListViewModel()

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)

                    Text("Hello, world!")

                    Spacer()
                }
            }
            .navigationTitle("東西線駅リスト")
            .navigationBarTitleDisplayMode(.large)
        }
        .onAppear {
            viewModel.getStationList()
        }
    }
}

#Preview {
    StationListView()
}
