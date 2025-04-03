//
//  GuiltyView.swift
//  Shifa
//
//  Created by Fahim Uddin on 4/3/25.
//

import SwiftUI

struct GuiltyView: View {
    
    let angryEmotion = EmotionsViewModel.shared.emotions.first { $0.type == .guilty }
    
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
    GuiltyView()
}
