//
//  TabBarView.swift
//  HabitTracker
//
//  Created by Максим Шишлов on 06.07.2024.
//

import SwiftUI

struct TabBarView: View {
    
    @Binding var selectedScreen: Screens
    
    var body: some View {
        HStack(spacing: 0) {
            TabBarLabel(label: "Habit",
                        image: "checklist",
                        screen: .habit,
                        selectedScreen: $selectedScreen)
            Spacer()
            TabBarButton(screen: .newHabit,
                         selectedScreen: $selectedScreen)
            Spacer()
            TabBarLabel(label: "Statictics", 
                        image: "chart.xyaxis.line",
                        screen: .statistics,
                        selectedScreen: $selectedScreen)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 5)
    }
}

#Preview {
    TabBarView(selectedScreen: .constant(.habit))
}
