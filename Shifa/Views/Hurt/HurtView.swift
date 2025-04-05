//
//  HurtView.swift
//  Shifa
//
//  Created by Fahim Uddin on 4/3/25.
//

import SwiftUI

struct HurtView: View {
    
    let hurtEmotion: Emotion? = EmotionsViewModel.shared.emotions.first { $0.type == .hurt }
    let hurtAdvice: [Advice] = AdviceViewModel.shared.advice.filter { $0.emotion == .hurt }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color("BG Top"), Color("BG Bottom")],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            if let emotion = hurtEmotion, !hurtAdvice.isEmpty {
                TabView {
                    BeginHurtView(emotion: emotion)
                    
                    ForEach(hurtAdvice, id: \.description) { advice in
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
    HurtView()
}
