//
//  ContentView.swift
//  Paypal
//
//  Created by GaliSrikanth on 14/11/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = AddCardViewModel()
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Text(viewModel.responseModel?.exploreNewWays.applyForRatenzahlung.title ?? "")
                .padding(20)
        }
        .onAppear() {
            viewModel.getAddCardData()
        }
    }
}
