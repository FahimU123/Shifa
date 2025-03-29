//
//  EmotionsView.swift
//  Shifa
//
//  Created by Fahim Uddin on 3/29/25.
//

import SwiftUI



struct EmotionsView: View {
    @State private var viewModel = EmotionsViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    colors: [Color("BG Top"), Color("BG Bottom")],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea(edges: .all)
                ScrollView {
                    VStack(spacing: 20) {
                        Text("Tap the emotion you feel right now")
                            .font(.system(size: 34, design: .monospaced).weight(.semibold))
                            .padding(.horizontal, 20)
                            .multilineTextAlignment(.center)
                            .padding(.top, 40)
                        
                        LazyVGrid(columns: [GridItem(.flexible(), spacing: 20), GridItem(.flexible())], spacing: 20) {
                            ForEach(viewModel.emotions) { emotion in
                                EmotionCardView(emotion: emotion)
                            }
                        }
                        .padding(20)
                    }
                }
            }
        }
    }
}
#Preview {
    EmotionsView()
}
