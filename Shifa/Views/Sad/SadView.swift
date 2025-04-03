//
//  SadView.swift
//  Shifa
//
//  Created by Fahim Uddin on 3/31/25.
//

import SwiftUI

struct SadView: View {
    
    let sadEmotion = EmotionsViewModel.shared.emotions.first { $0.type == .sad }
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color("BG Top"), Color("BG Bottom")],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea(edges: .all)

            TabView {
                BeginSadView(emotion: sadEmotion!)
                SadQuranView(emotion: sadEmotion!)
                SadProptheticGuidanceView(emotion: sadEmotion!)
                
            }
            .tabViewStyle(.page(indexDisplayMode: .automatic))
        }
    }
}

#Preview {
    SadView()
}
