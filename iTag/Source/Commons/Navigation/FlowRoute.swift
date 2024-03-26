//
//  FlowRoute.swift
//  iTag
//
//  Created by Matheus Torres on 25/03/24.
//

import Foundation

enum FlowNavigationStyle {
    case push(FlowRoute)
    case pop
}

enum FlowRoute {
    case home
    case add
    case tag(tag: TagModel)
    
    static var defaultRoute: FlowRoute {
        return .home
    }
}

extension FlowRoute: Hashable {
    static func == (lhs: FlowRoute, rhs: FlowRoute) -> Bool {
        switch (lhs, rhs) {
        case (.home, .home), (.add, .add), (.tag, .tag):
            return true
        default:
            return false
        }
    }
    
    func hash(into hasher: inout Hasher) {
        switch self {
        case .home:
            hasher.combine(1)
        case .add:
            hasher.combine(2)
        case .tag:
            hasher.combine(4)
        }
    }
}
