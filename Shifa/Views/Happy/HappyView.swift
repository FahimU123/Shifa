//
//  HappyView.swift
//  Shifa
//
//  Created by Fahim Uddin on 4/3/25.
//

import SwiftUI

struct HappyView: View {
    
    let happyEmotion: Emotion? = EmotionsViewModel.shared.emotions.first { $0.type == .happy }
    let happyAdvice: [Advice] = AdviceViewModel.shared.advice.filter { $0.emotion == .happy }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color("BG Top"), Color("BG Bottom")],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            if let emotion = happyEmotion, !happyAdvice.isEmpty {
                TabView {
                    BeginHappyView(emotion: emotion)
                    
                    ForEach(happyAdvice, id: \.description) { advice in
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
    HappyView()
}
