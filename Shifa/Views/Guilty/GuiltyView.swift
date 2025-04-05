//
//  GuiltyView.swift
//  Shifa
//
//  Created by Fahim Uddin on 4/3/25.
//

import SwiftUI

struct GuiltyView: View {
    
    let guiltyEmotion: Emotion? = EmotionsViewModel.shared.emotions.first { $0.type == .guilty }
    let guiltyAdvice: [Advice] = AdviceViewModel.shared.advice.filter { $0.emotion == .guilty }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color("BG Top"), Color("BG Bottom")],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            if let emotion = guiltyEmotion, !guiltyAdvice.isEmpty {
                TabView {
                    BeginGuiltyView(emotion: emotion)
                    
                    ForEach(guiltyAdvice, id: \.description) { advice in
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
    GuiltyView()
}
