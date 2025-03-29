//
//  EmotionsViewModel.swift
//  Shifa
//
//  Created by Fahim Uddin on 3/29/25.
//

import Foundation

import SwiftUI

struct EmotionsViewModel {
     var emotions: [Emotion] = [
        Emotion(title: "Happy", symbol: "face.smiling",
               gradient: Gradient(colors: [Color("Happy Top"), Color("Happy Bottom")]),
               symbolGradient: Gradient(colors: [Color("SymbolYellow"), Color("SymbolOrange")])),
        
        Emotion(title: "Sad", symbol: "cloud.rain",
               gradient: Gradient(colors: [Color("Sad Top"), Color("Sad Bottom")]),
               symbolGradient: Gradient(colors: [Color("SymbolBlue"), Color("SymbolIndigo")])),
        
        Emotion(title: "Angry", symbol: "flame.fill",
               gradient: Gradient(colors: [Color("Angry Top"), Color("Angry Bottom")]),
               symbolGradient: Gradient(colors: [Color("Angry Top"), Color("Angry Bottom")])),
        
        Emotion(title: "Doubtful", symbol: "questionmark.circle.fill",
                gradient: Gradient(colors: [Color("Doubtful Top"), Color("Doubtful Bottom")]),
                symbolGradient: Gradient(colors: [Color("AngryTop"), Color("AngryBottom")])),
        
        Emotion(title: "GUILTY", symbol: "octagon.fill",
                gradient: Gradient(colors: [Color("Guilty Top"), Color("Guilty Bottom")]),
                symbolGradient: Gradient(colors: [Color("SymbolBlue"), Color("SymbolIndigo")])),
        
        Emotion(title: "ANXIOUS", symbol: "hand.thumbsup.fill",
                gradient: Gradient(colors: [Color("Anxious Top"), Color("Anxious Bottom")]),
                symbolGradient: Gradient(colors: [Color("SymbolYellow"), Color("SymbolOrange")]))
    ]
    

}
