//
//  AngryView.swift
//  Shifa
//
//  Created by Fahim Uddin on 3/30/25.
//

import SwiftUI

struct AngryView: View {
    
    let angryEmotion: Emotion? = EmotionsViewModel.shared.emotions.first { $0.type == .angry }
    let angryAdvice: [Advice] = AdviceViewModel.shared.advice.filter { $0.emotion == .angry }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color("BG Top"), Color("BG Bottom")],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            if let emotion = angryEmotion, !angryAdvice.isEmpty {
                TabView {
                    BeginAngryView(emotion: emotion)
                    
                    ForEach(angryAdvice, id: \.description) { advice in
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

//#Preview {
//    AngryView()
//}
