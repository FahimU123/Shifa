//
//  BeginAngryView.swift
//  Shifa
//
//  Created by Fahim Uddin on 4/1/25.
//

import SwiftUI

struct BeginAngryView: View {

    
    let emotion: Emotion
    
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
            .shadow(radius: 10)
            
            VStack {
                Image(systemName: "flame.fill")
                    .font(.system(size: 30))
                    .foregroundStyle(
                        LinearGradient(
                            gradient: emotion.symbolGradient,
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
            }
        }
    }
}

//#Preview {
//    BeginAngryView()
//}
