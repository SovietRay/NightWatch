//
//  NightWatchTasks.swift
//  NightWatch
//
//  Created by Mikhail Klishevich on 26.07.2021.
//

import Foundation

class NightWatchTasks: ObservableObject {
    @Published var nightlyTasks = [
        Task(name: "Check all windows", isComplete: false, lastCompleted: nil),
        Task(name: "Check all doors", isComplete: false, lastCompleted: nil),
        Task(name: "Document \"Strange and unusual\" occurrences", isComplete: false, lastCompleted: nil)
    ]

    @Published var weeklyTasks = [
        Task(name: "Steal all windows", isComplete: false, lastCompleted: nil),
        Task(name: "Steal all doors", isComplete: false, lastCompleted: nil),
        Task(name: "Burn document \"Strange and unusual\"", isComplete: false, lastCompleted: nil)
    ]

    @Published var monthlyTasks = [
        Task(name: "Place all windows back", isComplete: false, lastCompleted: nil),
        Task(name: "Place all doors back", isComplete: false, lastCompleted: nil),
        Task(name: "Document \"Strange and unusual\"?", isComplete: false, lastCompleted: nil)
    ]
}
