//
//  HurtView.swift
//  Shifa
//
//  Created by Fahim Uddin on 4/3/25.
//

import SwiftUI

struct HurtView: View {
    
    let hurtEmotion = EmotionsViewModel.shared.emotions.first { $0.type == .anxious }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color("BG Top"), Color("BG Bottom")],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea(edges: .all)
            
            TabView {
                BeginHurtView(emotion: hurtEmotion!)
                HurtQuranView(emotion: hurtEmotion!)
                HurtPropheticGuidenceView(emotion: hurtEmotion!)
                    
            }
            .tabViewStyle(.page(indexDisplayMode: .automatic))
        }
    }
}
#Preview {
    HurtView()
}
