//
//  TabBarButton.swift
//  HabitTracker
//
//  Created by Максим Шишлов on 06.07.2024.
//

import SwiftUI

struct TabBarButton: View {
    
    let screen: Screens
    @Binding var selectedScreen: Screens
    
    var body: some View {
        Button {
            selectedScreen = screen
        } label: {
            Image(systemName: "plus")
                .renderingMode(.template)
                .foregroundStyle(.white)
                .font(.body)
                .background {
                    RoundedRectangle(cornerRadius: 12)
                        .frame(width: 40, height: 40)
                        .foregroundStyle(.black)
                }
        }
        .buttonStyle(.plain)
        .frame(maxWidth: .infinity)

    }
}

#Preview {
    TabBarButton(screen: .newHabit, selectedScreen: .constant(.newHabit))
}
