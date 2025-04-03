//
//  EmotionsView.swift
//  Shifa
//
//  Created by Fahim Uddin on 3/29/25.
//

import SwiftUI



struct EmotionsView: View {
    
    @State private var viewModel = EmotionsViewModel.shared
    
    let columns = [GridItem(.flexible(), spacing: 20), GridItem(.flexible(), spacing: 20)]


    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [Color("BG Top"), Color("BG Bottom")],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea(edges: .all)
                    VStack(spacing: 40) {
                        Text("Tap the emotion you feel right now")
                            .font(.system(size: 34, design: .monospaced).weight(.semibold))
                            .padding(.horizontal, 20)
                            .multilineTextAlignment(.center)
                        
                        LazyVGrid(columns: columns, spacing: 20) {
                            ForEach(viewModel.emotions) { emotion in
                                NavigationLink(destination: destinationView(for: emotion)) {
                                    EmotionCardView(emotion: emotion)
                                }
                            }
                        }

                        .padding(20)
                    }
            }
        }
        
    }
    
    @ViewBuilder
    func destinationView(for emotion: Emotion) -> some View {
        switch emotion.type {
        case .happy:
            HappyView()
        case .sad:
            SadView()
        case .angry:
            AngryView()
        case .doubtful:
            DoubtfulView()
        case .guilty:
            GuiltyView()
        case .anxious:
            HurtView()
        }
    }
}
#Preview {
    EmotionsView()
}
