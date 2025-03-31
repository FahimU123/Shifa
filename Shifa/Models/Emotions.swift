//
//  Emotions.swift
//  Shifa
//
//  Created by Fahim Uddin on 3/29/25.
//

import SwiftUI


enum EmotionType: String, CaseIterable {
    case happy
    case sad
    case angry
    case doubtful
    case guilty
    case anxious
}
struct Emotion: Identifiable, Hashable {
    let id = UUID()
    let title: String
    let symbol: String
    let gradient: Gradient
    let symbolGradient: Gradient
    let type: EmotionType
}
