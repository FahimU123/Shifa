//
//  HomeView.swift
//  Shifa
//
//  Created by Fahim Uddin on 3/29/25.
//

import SwiftUI

struct HomeView: View {
    
    @State private var animateCapsule = false

    var body: some View {
        
        NavigationStack {
            
            ZStack {
                LinearGradient(
                    colors: [Color("BG Top"), Color("BG Bottom")],
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea(edges: .all)
                
                VStack {
                    Text("How are you feeling right now?")
                        .font(.system(size: 34, design: .monospaced).weight(.semibold))
                        .padding(.top, 100)
                        .padding(.horizontal, 20)
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    NavigationLink {
                        EmotionsView()
                    } label: {
                        HStack(spacing: 0) {
                            ZStack {
                                LinearGradient(
                                    colors: [Color("L Cap Top"), Color("L Cap Bottom")],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                                
                                Text("Seek Shifa")
                                    .foregroundColor(.black)
                                    .font(.system(size: 24, design: .monospaced).weight(.semibold))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 40)
                            }
                            
                            ZStack {
                                Color.white
                                
                                Image(systemName: "plus.circle.fill")
                                    .font(.system(size: 50))
                                    .foregroundColor(Color.green)
                                    .frame(maxWidth: .infinity, alignment: .trailing)
                                    .padding(.trailing, 60)
                                    .shadow(radius: 2)
                            }
                        }
                        .frame(width: 350, height: 100)
                        .clipShape(Capsule())
                        .shadow(radius: 4)
                        .scaleEffect(animateCapsule ? 1.05 : 0.6)
                        .rotationEffect(.degrees(animateCapsule ? 0 : -720))
                        .opacity(animateCapsule ? 1 : 0)
                        .animation(.interpolatingSpring(stiffness: 100, damping: 10).delay(0.2), value: animateCapsule)
                        }
                    
                    Text("Take a moment to reflect")
                        .foregroundColor(.black)
                        .font(.system(size: 17, design: .monospaced).weight(.semibold))
                        .padding(.top, 40)
                    
                    Spacer()
                    
                    }
                    
                }
            }
        .onAppear {
            animateCapsule = true
        }

        .accentColor(.black)
    }

}



#Preview {
    HomeView()
}
