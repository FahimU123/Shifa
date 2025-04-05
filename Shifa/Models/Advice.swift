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
    var title: String
    var description: String
    
    init(title: String, description: String, emotion: EmotionType, source: String?) {
        self.title = title
        self.description = description
        self.emotion = emotion
        self.source = source
    }
}

