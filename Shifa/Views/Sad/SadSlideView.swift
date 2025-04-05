//
//  SadProptheticGuidanceView.swift
//  Shifa
//
//  Created by Fahim Uddin on 4/1/25.
//

import SwiftUI

struct SadProptheticGuidanceView: View {
    
    let emotion: Emotion
    let advice: Advice
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color("BG Top"), Color("BG Bottom")],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
            
            LinearGradient(gradient: emotion.gradient,
                           startPoint: .top,
                           endPoint: .bottom)
            .frame(width: 350, height: 700)
            .clipShape(RoundedRectangle(cornerRadius: 40))
            .shadow(radius: 4)
            
            VStack(alignment: .leading, spacing: 20) {
                Text(advice.title)
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                
                Text(advice.description)
                    .font(.body)
                    .foregroundColor(.white.opacity(0.9))
                    .multilineTextAlignment(.leading)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("Source:")
                        .font(.caption.bold())
                        .foregroundColor(.white.opacity(0.8))
                    
                    Text(advice.source ?? "")
                        .font(.caption)
                        .foregroundColor(.white.opacity(0.8))
                        .italic()
                }
            }
            .padding(30)
            .frame(width: 320, height: 640, alignment: .topLeading)
        }
    }
}
//#Preview {
//    SadProptheticGuidanceView()
//}
