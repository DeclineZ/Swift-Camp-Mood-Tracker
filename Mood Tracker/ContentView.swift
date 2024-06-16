//
//  ContentView.swift
//  Mood Tracker
//
//  Created by admin on 15/6/2567 BE.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var context
    @Query var mood: [moods]
    @State var showAddMood: Bool = false
    @State var showMoodStatistics: Bool = false
    
    var body: some View {
        VStack {
            Image("Logo").frame(maxHeight: 200)
            Text("Emotion Diary").font(.title).fontWeight(.bold )
            Button("Add A Mood", action: {showAddMood.toggle()})
            Spacer()
            
            Button("View Mood Statistics", action: {showMoodStatistics.toggle()})
            
        }
        .sheet(isPresented: $showAddMood, content: {
            addMood1()
        }).sheet(isPresented: $showMoodStatistics, content: {
            
        })
        .padding()
    }
}
