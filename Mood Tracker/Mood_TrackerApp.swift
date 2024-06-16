//
//  Mood_TrackerApp.swift
//  Mood Tracker
//
//  Created by admin on 15/6/2567 BE.
//

import SwiftUI
import SwiftData

@main
struct Mood_TrackerApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }.modelContainer(for: moods.self)
    }
}
