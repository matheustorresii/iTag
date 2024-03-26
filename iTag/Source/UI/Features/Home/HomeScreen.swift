//
//  HomeScreen.swift
//  iTag
//
//  Created by Matheus Torres on 25/03/24.
//

import Combine
import SwiftUI

struct HomeScreen: View, NavigableView {
    
    // MARK: - PUBLIC PROPERTIES
    
    var navigation: PassthroughSubject<FlowNavigationStyle, Never> = .init()
    
    // MARK: - PRIVATE PROPERTIES
    
    @ObservedObject private var viewModel: HomeViewModel = .init()
    
    // MARK: - BODY
    
    var body: some View {
        switch viewModel.state {
        case .idle, .loading:
            LoadingView()
        case .content(let tags):
            makeContent(tags)
        case .error:
            Text("Error")
        }
    }
    
    // MARK: - PRIVATE METHODS
    
    @ViewBuilder
    private func makeContent(_ tags: [TagModel]) -> some View {
        ScrollView {
            ForEach(tags, id: \.nfc) { tag in
                
            }
        }
        .padding(.horizontal, 16)
        .navigationTitle("All iTags")
        .navigationBarTitleDisplayMode(.large)
    }
    
    @ViewBuilder
    private func makeEmptyView() -> some View {
        
    }
    
    @ViewBuilder
    private func makeError() -> some View {
        
    }
}
