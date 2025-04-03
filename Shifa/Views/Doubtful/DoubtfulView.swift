//
//  DoubtfulView.swift
//  Shifa
//
//  Created by Fahim Uddin on 4/3/25.
//

import SwiftUI

struct DoubtfulView: View {
    let doubtfulEmotion = EmotionsViewModel.shared.emotions.first { $0.type == .doubtful }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color("BG Top"), Color("BG Bottom")],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea(edges: .all)
            
            TabView {
                BeginDoubtfulView(emotion: doubtfulEmotion!)
                DoubtfulQuranView(emotion: doubtfulEmotion!)
                DoubtfulPropheticGuidanceView(emotion: doubtfulEmotion!)
                    
                
            }
            .tabViewStyle(.page(indexDisplayMode: .automatic))
        }
    }
}

#Preview {
    DoubtfulView()
}
