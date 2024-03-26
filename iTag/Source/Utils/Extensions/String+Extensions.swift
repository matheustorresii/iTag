//
//  String+Extensions.swift
//  iTag
//
//  Created by Matheus Torres on 25/03/24.
//

import Foundation

extension String {
    static var empty: String {
        return ""
    }
    
    func localized() -> String {
        return NSLocalizedString(self, comment: .empty)
    }
    
    func localized(params: CVarArg...) -> String {
        return String.localizedStringWithFormat(NSLocalizedString(self, comment: .empty), params)
    }
    
    var isSingleEmoji: Bool { count == 1 && containsEmoji }
    var containsEmoji: Bool { contains { $0.isEmoji } }
}

extension Character {
    var isEmoji: Bool { isSimpleEmoji || isCombinedIntoEmoji }
    var isCombinedIntoEmoji: Bool { unicodeScalars.count > 1 && unicodeScalars.first?.properties.isEmoji ?? false }
    var isSimpleEmoji: Bool {
        guard let firstScalar = unicodeScalars.first else { return false }
        return firstScalar.properties.isEmoji && firstScalar.value > 0x238C
    }
}
