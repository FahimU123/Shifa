//
//  HappyView.swift
//  Shifa
//
//  Created by Fahim Uddin on 4/3/25.
//

import SwiftUI

struct HappyView: View {
    
    
    let happyEmotion = EmotionsViewModel.shared.emotions.first { $0.type == .happy }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color("BG Top"), Color("BG Bottom")],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea(edges: .all)
            
            TabView {
                BeginHappyView(emotion: happyEmotion!)
                HappyQuranView(emotion: happyEmotion!)
                HappyProheticGuidanceView(emotion: happyEmotion!)
                    
            }
            .tabViewStyle(.page(indexDisplayMode: .automatic))
        }
    }
}
#Preview {
    HappyView()
}
