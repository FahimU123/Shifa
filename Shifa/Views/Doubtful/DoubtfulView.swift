//
//  DoubtfulView.swift
//  Shifa
//
//  Created by Fahim Uddin on 4/3/25.
//

import SwiftUI

struct DoubtfulView: View {
        
        let doubtfulEmotion: Emotion? = EmotionsViewModel.shared.emotions.first { $0.type == .doubtful }
        let doubtfulAdvice: [Advice] = AdviceViewModel.shared.advice.filter { $0.emotion == .doubtful }
        
        var body: some View {
            ZStack {
                LinearGradient(
                    colors: [Color("BG Top"), Color("BG Bottom")],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()
                
                if let emotion = doubtfulEmotion, !doubtfulAdvice.isEmpty {
                    TabView {
                        BeginDoubtfulView(emotion: emotion)
                        
                        ForEach(doubtfulAdvice, id: \.description) { advice in
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
    DoubtfulView()
}


