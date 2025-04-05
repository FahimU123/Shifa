//
//  SadView.swift
//  Shifa
//
//  Created by Fahim Uddin on 3/31/25.
//

import SwiftUI

struct SadView: View {
    
    let sadEmotion: Emotion? = EmotionsViewModel.shared.emotions.first { $0.type == .sad }
    let sadAdvice: [Advice] = AdviceViewModel.shared.advice.filter { $0.emotion == .sad }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color("BG Top"), Color("BG Bottom")],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            if let emotion = sadEmotion, !sadAdvice.isEmpty {
                TabView {
                    BeginSadView(emotion: emotion)
                    
                    ForEach(sadAdvice, id: \.description) { advice in
                        AngrySlideView(emotion: emotion, advice: advice)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .automatic))
            } else {
                Text("No advice available.")
                    .font(.headline)
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    SadView()
}
