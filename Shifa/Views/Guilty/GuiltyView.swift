//
//  GuiltyView.swift
//  Shifa
//
//  Created by Fahim Uddin on 4/3/25.
//

import SwiftUI

struct GuiltyView: View {
    
    let guiltyEmotion = EmotionsViewModel.shared.emotions.first { $0.type == .guilty }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color("BG Top"), Color("BG Bottom")],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea(edges: .all)
            
            TabView {
                BeginGuiltyView(emotion: guiltyEmotion!)
                GuiltyQuranView(emotion: guiltyEmotion!)
                GuiltyPropheticGuidanceView(emotion: guiltyEmotion!)
                
            }
            .tabViewStyle(.page(indexDisplayMode: .automatic))
        }
    }
}


#Preview {
    GuiltyView()
}
