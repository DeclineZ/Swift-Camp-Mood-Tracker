//
//  moods.swift
//  Mood Tracker
//
//  Created by admin on 15/6/2567 BE.
//

import Foundation
import SwiftData

@Model
class moods {
    var mood: Int
    var date: Date
    var note: String
    
    init(mood: Int, date: Date = Date.now, note: String = "") {
        self.mood = mood
        self.date = date
        self.note = note
    }
}
