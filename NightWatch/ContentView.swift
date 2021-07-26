//
//  ContentView.swift
//  NightWatch
//
//  Created by Mikhail Klishevich on 26.06.2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var nightWatchTasks: NightWatchTasks
    @State private var focusModeOn = false
    
    var body: some View {
        TabView {
            TasksView(nightWatchTasks: nightWatchTasks, focusModeOn: self.$focusModeOn)
                .tabItem {
                Image(systemName: "house.fill")
                Text("Main")}
            Text("Options").tabItem {
                Image(systemName: "gear")
                Text("Options")
            }
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

struct TasksView: View {
    @ObservedObject var nightWatchTasks: NightWatchTasks
    @Binding var focusModeOn : Bool
    
    var body: some View {
        NavigationView {
            List {
                //MARK: Nightly Tasks
                Section(header: TaskSectionHeader(symbolSysteName: "moon.stars", HeaderText: "Nightly Tasks")) {
                    let taskIndices = nightWatchTasks.nightlyTasks.indices
                    let tasks = nightWatchTasks.nightlyTasks
                    let taskIndexPairs = Array(zip(tasks, taskIndices))
                    
                    ForEach(taskIndexPairs, id:\.0.id, content: {
                        task, taskIndex in
                        
                        let nightWatchTasksWrapper = $nightWatchTasks
                        let tasksBinding = nightWatchTasksWrapper.nightlyTasks
                        let theTaskBinding = tasksBinding[taskIndex]
                        
                        if focusModeOn == false || (focusModeOn && task.isComplete == false) {
                            NavigationLink(
                                destination: DetailsView(task: theTaskBinding),
                                label: {
                                    TaskRow(task: task)
                                })
                        }
                    }).onDelete(perform: { indexSet in
                        nightWatchTasks.nightlyTasks.remove(atOffsets: indexSet)
                    }).onMove(perform: { indices, newOffset in
                        nightWatchTasks.nightlyTasks.move(fromOffsets: indices, toOffset: newOffset)
                    })
                }
//                //MARK: Weekly Tasks
//                Section(header: TaskSectionHeader(symbolSysteName: "sunset", HeaderText: "Weekly Tasks")) {
//                    ForEach(nightWatchTasks.weeklyTasks, content: {
//                        task in
//                        NavigationLink(
//                            destination: DetailsView(task: task),
//                            label: {
//                                TaskRow(task: task)
//                            })
//                    })
//                }
//                //MARK: Monthly Tasks
//                Section(header: TaskSectionHeader(symbolSysteName: "calendar", HeaderText: "Monthly Tasks")) {
//                    ForEach(nightWatchTasks.monthlyTasks, content: {
//                        task in
//                        NavigationLink(
//                            destination: DetailsView(task: task),
//                            label: {
//                                TaskRow(task: task)
//                            })
//                    })
//                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Home")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing){
                    EditButton()
                }
                ToolbarItem(placement: .bottomBar) {
                    Toggle(isOn: $focusModeOn, label: {
                        Text("Focus mode")
                    })
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let nightWatchTasks = NightWatchTasks()
        Group {
            ContentView(nightWatchTasks: nightWatchTasks)
            TaskRow(task: Task(name: "Test task", isComplete: true, lastCompleted: nil))
                .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/))
        }
    }
}

struct TaskRow: View {
    let task : Task;
    var body: some View {
        VStack {
            if task.isComplete {
                HStack {
                    Image(systemName: "checkmark.square")
                    Text(task.name)
                        .foregroundColor(.gray)
                        .strikethrough()
                }
            } else {
                HStack {
                    Image(systemName: "square")
                    Text(task.name)
                }
            }
        }
    }
}
