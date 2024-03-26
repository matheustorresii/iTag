//
//  LoadingView.swift
//  iTag
//
//  Created by Matheus Torres on 25/03/24.
//

import SwiftUI

struct LoadingView: View {
    @State private var position: [(x: CGFloat, y: CGFloat)] = [
        (x: 0, y: -24),
        (x: 24, y: 12),
        (x: -24, y: 12)
    ]
    
    var body: some View {
        ZStack {
            ForEach((0..<3)) { item in
                Circle()
                    .frame(width: 16, height: 16)
                    .offset(x: position[safe: item]?.x ?? .zero,
                            y: position[safe: item]?.y ?? .zero)
            }
        }
        .onAppear {
            withAnimation(.linear(duration: 0.7).repeatForever(autoreverses: false)) {
                position.append(position.removeFirst())
            }
        }
    }
}

#Preview {
    LoadingView()
}
