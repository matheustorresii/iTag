//
//  TagScreen.swift
//  iTag
//
//  Created by Matheus Torres on 25/03/24.
//

import Combine
import SwiftUI

struct TagScreen: View, NavigableView {
    
    // MARK: - PUBLIC PROPERTIES
    
    var navigation: PassthroughSubject<FlowNavigationStyle, Never> = .init()
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Button {
                navigation.send(.pop)
            } label: {
                Text("Back from Tag")
            }
        }
    }
}
