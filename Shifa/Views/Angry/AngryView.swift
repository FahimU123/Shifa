//
//  AngryView.swift
//  Shifa
//
//  Created by Fahim Uddin on 3/30/25.
//

import SwiftUI

struct AngryView: View {
    
    let angryEmotion = EmotionsViewModel.shared.emotions.first { $0.type == .angry }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color("BG Top"), Color("BG Bottom")],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea(edges: .all)
            
            TabView {
                BeginAngryView(emotion: angryEmotion!)
                AngryQuranView(emotion: angryEmotion!)
                AngryPropheticGuidanceView(emotion: angryEmotion!)
                AngryDuaView(emotion: angryEmotion!)
                
            }
            .tabViewStyle(.page(indexDisplayMode: .automatic))
        }
    }
}

#Preview {
    AngryView()
}
