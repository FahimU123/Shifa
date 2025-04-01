//
//  Emotions.swift
//  Shifa
//
//  Created by Fahim Uddin on 3/29/25.
//

import SwiftUI


enum EmotionType {
    case happy
    case sad
    case angry
    case doubtful
    case guilty
    case anxious
}
class Emotion: Identifiable {
    let id = UUID()
    let title: String 
    let symbol: String
    let gradient: Gradient
    let symbolGradient: Gradient
    let type: EmotionType
    
    init(title: String, symbol: String, gradient: Gradient, symbolGradient: Gradient, type: EmotionType) {
        self.title = title
        self.symbol = symbol
        self.gradient = gradient
        self.symbolGradient = symbolGradient
        self.type = type
    }
}
