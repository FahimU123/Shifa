//
//  HappyProheticGuidanceView.swift
//  Shifa
//
//  Created by Fahim Uddin on 4/3/25.
//

import SwiftUI

struct HappyProheticGuidanceView: View {
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
                    .font(.system(size: 34, design: .monospaced).weight(.semibold))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                
                Text(advice.description)
                    .font(.system(size: 17, design: .monospaced).weight(.semibold))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 6) {
                    Text("Source:")
                        .font(.system(size: 12, design: .monospaced).weight(.semibold))
                        .foregroundColor(.black)
                    
                    Text(advice.source ?? "")
                        .font(.system(size: 12, design: .monospaced).weight(.semibold))
                        .foregroundColor(.black)
                        .italic()
                    
                    Text("💭 How can you apply this today?")
                        .font(.system(size: 12, design: .monospaced).weight(.semibold))
                        .foregroundColor(.black)

                }
            }
            .padding(30)
            .frame(width: 320, height: 640, alignment: .topLeading)
        }
    }
}

//#Preview {
//    HappyProheticGuidanceView()
//}
