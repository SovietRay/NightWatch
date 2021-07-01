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
        NavigationView {
            List {
                //MARK: Nightly Tasks
                Section(header: TaskSectionHeader(symbolSysteName: "moon.stars", HeaderText: "Nightly Tasks")) {
                    ForEach(nightlyTasks, id: \.self, content: {
                        taskName in
                        NavigationLink(taskName,
                                       destination: DetailsView(taskName: taskName))
                    })
                }
                //MARK: Weekly Tasks
                Section(header: TaskSectionHeader(symbolSysteName: "sunset", HeaderText: "Weekly Tasks")) {
                    ForEach(weeklyTasks, id: \.self, content: {
                        taskName in
                        NavigationLink(taskName,
                                       destination: DetailsView(taskName: taskName))
                    })
                }
                //MARK: Monthly Tasks
                Section(header: TaskSectionHeader(symbolSysteName: "calendar", HeaderText: "Monthly Tasks")) {
                    ForEach(monthlyTasks, id: \.self, content: {
                        taskName in
                        NavigationLink(taskName,
                                       destination: DetailsView(taskName: taskName))
                    })
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
        }
    }
}

struct TaskSectionHeader: View {
    let symbolSysteName: String
    let HeaderText: String
    var body: some View {
        HStack {
            Image(systemName: symbolSysteName)
            Text(HeaderText)
        }
        .font(/*@START_MENU_TOKEN@*/.title3/*@END_MENU_TOKEN@*/)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


