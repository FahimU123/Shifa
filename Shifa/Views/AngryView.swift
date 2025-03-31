//
//  AngryView.swift
//  Shifa
//
//  Created by Fahim Uddin on 3/30/25.
//

import SwiftUI

struct AngryView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color("BG Top"), Color("BG Bottom")],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea(edges: .all)
            
            LinearGradient(
                colors: [Color("Angry Top"), Color("Angry Bottom")],
                startPoint: .top,
                endPoint: .bottom
            )
            .frame(width: 350, height: 700)
            .clipShape(RoundedRectangle(cornerRadius: 40))
            .shadow(radius: 10)
            TabView {
                SadView()
                SadView()
            }
            .tabViewStyle(.page(indexDisplayMode: .automatic))
        }
    }
}

#Preview {
    AngryView()
}
