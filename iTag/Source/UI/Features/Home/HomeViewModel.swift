//
//  HomeViewModel.swift
//  iTag
//
//  Created by Matheus Torres on 25/03/24.
//

import Foundation

enum HomeViewState {
    case idle
    case content(tags: [TagModel])
    case error
    case loading
}

final class HomeViewModel: ObservableObject {
    // MARK: - PUBLIC PROPERTIES
    
    @Published private(set) var state: HomeViewState = .idle
}
