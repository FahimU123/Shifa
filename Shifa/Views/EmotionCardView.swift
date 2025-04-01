//
//  EmotionCardsView.swift
//  Shifa
//
//  Created by Fahim Uddin on 3/29/25.
//

import SwiftUI

struct EmotionCardView: View {
    
    let emotion: Emotion
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
   
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    LinearGradient(
                        gradient: emotion.gradient,
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .shadow(radius: 4)
            
    
            Image(systemName: emotion.symbol)
                .font(.system(size: 30))
                .foregroundStyle(
                    LinearGradient(
                        gradient: emotion.symbolGradient,
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .foregroundColor(.black)
                .padding(20)
                .shadow(radius: 4)
            
            Text(emotion.title)
                .font(.headline)
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
        .frame(height: 150)
        .shadow(radius: 5)
    }
}

