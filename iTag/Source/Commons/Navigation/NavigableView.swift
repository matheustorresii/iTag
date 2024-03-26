//
//  NavigableView.swift
//  iTag
//
//  Created by Matheus Torres on 25/03/24.
//

import Combine
import SwiftUI

protocol NavigableView: View {
    var navigation: PassthroughSubject<FlowNavigationStyle, Never> { get }
}
