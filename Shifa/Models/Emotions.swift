//
//  Emotions.swift
//  Shifa
//
//  Created by Fahim Uddin on 3/29/25.
//

import SwiftUI

struct Emotion: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let symbol: String
    let gradient: Gradient
    let symbolGradient: Gradient
}
