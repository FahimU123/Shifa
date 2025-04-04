//
//  Advice.swift
//  Shifa
//
//  Created by Fahim Uddin on 4/4/25.
//

import Foundation


class Advice {
    var emotion: EmotionType
    var source: String?
    var heading: String
    var text: String
    
    init(heading: String, text: String, emotion: EmotionType) {
        self.heading = heading
        self.text = text
        self.emotion = emotion
    }
}
