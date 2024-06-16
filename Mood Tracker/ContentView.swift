//
//  ContentView.swift
//  Mood Tracker
//
//  Created by admin on 15/6/2567 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("📚").font(.system(size: 180))
            Text("Emotion Diary").font(.title).fontWeight(.bold )
            Spacer()
            Button("Add A Mood", action: {})
            Button("View Moods", action: {})
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
