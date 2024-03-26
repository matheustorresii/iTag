//
//  Collection+Extensions.swift
//  iTag
//
//  Created by Matheus Torres on 25/03/24.
//

import Foundation

extension Collection where Indices.Iterator.Element == Index {
    subscript (safe index: Index) -> Iterator.Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
