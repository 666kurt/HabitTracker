//
//  TabBarLabel.swift
//  HabitTracker
//
//  Created by Максим Шишлов on 06.07.2024.
//

import SwiftUI

struct TabBarLabel: View {
    
    let label: String
    let image: String
    var screen: Screens
    @Binding var selectedScreen: Screens
    
    var body: some View {
        Button(action: {
            selectedScreen = screen
        }, label: {
            VStack(spacing: 0) {
                Image(systemName: image)
                    .frame(width: 32, height: 32)
                Text(label)
                    .font(.caption2)
            }
        })
        .foregroundStyle(selectedScreen == screen ? .black.opacity(0.4) : .black)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    TabBarLabel(label: "Habit", image: "checklist", screen: .habit, selectedScreen: .constant(.newHabit))
}
