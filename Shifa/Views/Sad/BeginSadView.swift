//
//  BeginSadView.swift
//  Shifa
//
//  Created by Fahim Uddin on 4/1/25.
//

import SwiftUI

struct BeginSadView: View {
    
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
            .shadow(radius: 4)
            
            VStack {
                Image(systemName: emotion.symbol)
                    .font(.system(size: 100))
                    .foregroundStyle(
                        LinearGradient(
                            gradient: emotion.symbolGradient,
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .shadow(radius: 4)
                
                
                Text("Find Peace in Allah’s Mercy When Sadness Weighs Heavy")
                    .font(.system(size: 34, design: .monospaced).weight(.semibold))
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 150)
                    .padding(.top, 50)
                    .padding(.horizontal, 30)
            }
        }
    }
}

//#Preview {
//    BeginSadView()
//}
