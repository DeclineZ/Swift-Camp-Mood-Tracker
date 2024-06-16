//
//  AddToDoSheet.swift
//  To-do list
//
//  Created by admin on 15/6/2567 BE.
//

import SwiftUI
import SwiftData

struct addMood1: View {
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismiss
    @State var newMood = moods()
    
    var body: some View {
        NavigationStack {
            Text("Describe your day.").font(.title).fontWeight(.bold)
            TextField("name", text: $newMood.note)
            Text("How do you feel today?").font(.title).fontWeight(.bold)
            HStack {
                Button("☹️", action: {
                    newMood.mood = 1
                    context.insert(newMood)
                    try! context.save()
                    dismiss()
                }).font(.system(size: 60))
                Button("🙁", action: {
                    newMood.mood = 2
                    context.insert(newMood)
                    try! context.save()
                    dismiss()
                }).font(.system(size: 60))
                Button("😐", action: {
                    newMood.mood = 3
                    context.insert(newMood)
                    try! context.save()
                    dismiss()
                }).font(.system(size: 60))
                Button("😀", action: {
                    newMood.mood = 4
                    context.insert(newMood)
                    try! context.save()
                    dismiss()
                }).font(.system(size: 60))
                Button("😄", action: {
                    newMood.mood = 5
                    context.insert(newMood)
                    try! context.save()
                    dismiss()
                }).font(.system(size: 60))
            }.navigationTitle("Add a note")
                .navigationBarTitleDisplayMode(.inline).toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Close") {
                            dismiss()
                        }
                    }
                }
        }
    }
}

