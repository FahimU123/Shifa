//
//  EmotionsViewModel.swift
//  Shifa
//
//  Created by Fahim Uddin on 3/29/25.
//

import SwiftUI

class EmotionsViewModel {
    
    static let shared = EmotionsViewModel()
    
    private init() {}
    
     var emotions: [Emotion] = [
        Emotion(title: "HAPPY", symbol: "sparkles",
                gradient: Gradient(colors: [Color(.white), Color("Dua Bottom")]),
                symbolGradient: Gradient(colors: [Color("Star Top"), Color("Star Bottom")]), type: .happy),
        
        Emotion(title: "SAD", symbol: "drop.fill",
               gradient: Gradient(colors: [Color("Sad Top"), Color("Sad Bottom")]),
                symbolGradient: Gradient(colors: [Color("Teardrop Top"), Color("Teardrop Bottom")]), type: .sad),
        
        Emotion(title: "ANGRY", symbol: "flame.fill",
               gradient: Gradient(colors: [Color("Angry Top"), Color("Angry Bottom")]),
                symbolGradient: Gradient(colors: [Color("Fire Top"), Color("Fire Bottom")]), type: .angry),
        
        Emotion(title: "DOUBTFUL", symbol: "questionmark.circle.fill",
                gradient: Gradient(colors: [Color("Doubtful Top"), Color("Doubtful Bottom")]),
                symbolGradient: Gradient(colors: [Color("? Top"), Color("? Bottom")]), type: .doubtful),
        
        Emotion(title: "GUILTY", symbol: "arrow.down.heart.fill",
                gradient: Gradient(colors: [Color("Guilty Top"), Color("Guilty Bottom")]),
                symbolGradient: Gradient(colors: [Color("Heart Top"), Color("Heart Bottom")]), type: .guilty),
        
        Emotion(title: "ANXIOUS", symbol: "exclamationmark.triangle.fill",
                gradient: Gradient(colors: [Color("Anxious Top"), Color("Anxious Bottom")]),
                symbolGradient: Gradient(colors: [Color("Anxious Top"), Color("Anxious Bottom")]), type: .anxious)
    ]
    
}
