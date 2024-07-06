//
//  Router.swift
//  HabitTracker
//
//  Created by Максим Шишлов on 06.07.2024.
//

import Foundation

enum Screens: Hashable {
    case habit
    case newHabit
    case statistics
}

final class Router: ObservableObject {
    
    static let shared = Router()
    private init() {}
    
    @Published var selectedScreen: Screens = .habit
    @Published var path: [Screens] = []
    
    func navigate(to screen: Screens) {
        path.append(screen)
    }
    
    func goBack() {
        _ = path.popLast()
    }
    
}

