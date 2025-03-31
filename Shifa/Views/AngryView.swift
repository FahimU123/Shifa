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
            VStack {
                Text("Angry View")
            }
        }
    }
}

#Preview {
    AngryView()
}
