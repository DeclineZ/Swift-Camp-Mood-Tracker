//
//  moodRow.swift
//  Mood Tracker
//
//  Created by admin on 15/6/2567 BE.
//

import SwiftUI

struct moodRow: View {
    var mood = moods()
    @Environment(\.modelContext) var context
    var body: some View {
        HStack(spacing: 10) {
            if (mood.mood == 1) {
                Text("☹️").font(.system(size: 30))
            } else if (mood.mood == 2) {
                Text("🙁").font(.system(size: 30))
            } else if (mood.mood == 3) {
                Text("😐").font(.system(size: 30))
            } else if (mood.mood == 4) {
                Text("😃").font(.system(size: 30))
            } else if (mood.mood == 5) {
                Text("😄").font(.system(size: 30))
            }
            VStack(alignment: .leading) {
                Text(mood.date, style: .date)
                    .font(.title3)
                
                Text(mood.note)
                    .font(.caption)
            }
        }

    }
}

#Preview {
    moodRow()
}
