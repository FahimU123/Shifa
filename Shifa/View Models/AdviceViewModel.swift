//
//  AdviceViewModel.swift
//  Shifa
//
//  Created by Fahim Uddin on 4/4/25.
//

import Foundation

class AdviceViewModel {
    
    static let shared = AdviceViewModel()
    
    private init() {}
    
    let advice: [Advice] = [
        Advice(heading: "Cool Off", text: "Take a few deep breaths to calm your mind.", emotion: .angry),
        Advice(heading: "Think First", text: "Before reacting, pause to think about the situation.", emotion: .angry),
        Advice(heading: "Let It Out", text: "Write down what made you angry to release the tension.", emotion: .angry),
        Advice(heading: "Cry It Out", text: "It's okay to cry and let it flow.", emotion: .sad),
        Advice(heading: "Rest Your Mind", text: "Take a break. Your mind needs care too.", emotion: .anxious),
        
    ]

}




