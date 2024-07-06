//
//  ContentView.swift
//  HabitTracker
//
//  Created by Максим Шишлов on 01.07.2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var router = Router.shared
    
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(spacing: 0) {
                Spacer()
                switch router.selectedScreen {
                case .habit:
                    Text("HabitScreen")
                case .newHabit:
                    Text("NewHabitScreen")
                case .statistics:
                    Text("StaticticsScreen")
                }
                Spacer()
            }
            TabBarView(selectedScreen: $router.selectedScreen)
        }
        .padding(.horizontal, 16)
    }
}

#Preview {
    ContentView()
        .environmentObject(Router.shared)
}
