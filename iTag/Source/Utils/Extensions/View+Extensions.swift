//
//  View+Extensions.swift
//  iTag
//
//  Created by Matheus Torres on 25/03/24.
//

import SwiftUI

extension View {
    func toAny() -> AnyView {
        return .init(self)
    }
}
