//
//  AngryDuaView.swift
//  Shifa
//
//  Created by Fahim Uddin on 4/1/25.
//

import SwiftUI

struct AngrySlideView: View {
        
        let emotion: Emotion
        
        let advice: Advice
    
        var body: some View {
            ZStack {
                LinearGradient(
                    colors: [Color("BG Top"), Color("BG Bottom")],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea(edges: .all)
                
                LinearGradient(gradient: emotion.gradient,
                    startPoint: .top,
                    endPoint: .bottom
                )
                .frame(width: 350, height: 700)
                .clipShape(RoundedRectangle(cornerRadius: 40))
                .shadow(radius: 4)
                
                VStack {
                    Text(advice.heading)
                    Text(advice.text)
                }
            }
        }
    }

//#Preview {
//    AngryDuaView()
//}
