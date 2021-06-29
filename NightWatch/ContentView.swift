//
//  ContentView.swift
//  NightWatch
//
//  Created by Mikhail Klishevich on 26.06.2021.
//

import SwiftUI

let nightlyTasks = [
    "Check all windows",
    "Check all doors",
    "Document \"Strange and unusual\" occurrences",
]

let weeklyTasks = [
    "Steal all windows",
    "Steal all doors",
    "Burn document \"Strange and unusual\"",
]

let monthlyTasks = [
    "Place all windows back",
    "Place all doors back",
    "Document \"Strange and unusual\"?",
]

struct ContentView: View {
    var body: some View {
        List {
            //MARK: Nightly Tasks
            Section(header: HStack {
                Image(systemName: "moon.stars")
                Text("Nightly Tasks")
            }
            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)) {
                ForEach(nightlyTasks, id: \.self, content: {
                    taskName in
                    Text(taskName)
                })
            }
            //MARK: Weekly Tasks
            Section(header: HStack {
                Image(systemName: "sunset")
                Text("Weekly Tasks")
            }
            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)) {
                ForEach(weeklyTasks, id: \.self, content: {
                    taskName in
                    Text(taskName)
                })
            }
            //MARK: Monthly Tasks
            Section(header: HStack {
                Image(systemName: "calendar")
                Text("Monthly Tasks")
            }
            .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)) {
                ForEach(monthlyTasks, id: \.self, content: {
                    taskName in
                    Text(taskName)
                })
            }.listStyle(GroupedListStyle()) // Этот стиль был изначально для List?
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
