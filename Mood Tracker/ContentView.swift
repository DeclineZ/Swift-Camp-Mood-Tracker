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
    @Query var moods: [moods]
    @State var showAddMood: Bool = false
    @State var showMoodStatistics: Bool = false
    @State var num: Int = 0
    
    var body: some View {
        VStack {
            Image("Logo").frame(maxHeight: 200)
            Text("Emotion Diary").font(.title).fontWeight(.bold )
            Button("Add A Mood", action: {showAddMood.toggle()})
            Spacer()
            NavigationStack {
                    List {
                        ForEach(moods) {
                            mood in moodRow(mood: mood)
                        }
                    }
                    .navigationTitle("Recent")
                    .navigationBarTitleDisplayMode(.inline)
                }
            Text("Your Overall Mood")
            if (num == 1) {
                Text("☹️").font(.system(size: 30))
            } else if (num == 2) {
                Text("🙁").font(.system(size: 30))
            } else if (num == 3) {
                Text("😐").font(.system(size: 30))
            } else if (num == 4) {
                Text("😃").font(.system(size: 30))
            } else if (num == 5) {
                Text("😄").font(.system(size: 30))
            }
            
        }.onAppear(){
            num = moods.lazy.map(\.mood).reduce(0) { $0 + Int($1) } / moods.count
            print(moods.lazy.map(\.mood).reduce(0) { $0 + Int($1) } / moods.count)
        }
        .sheet(isPresented: $showAddMood, content: {
            addMood1()
        })
        .padding()
    }
    
}
