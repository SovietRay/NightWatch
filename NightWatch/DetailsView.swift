//
//  DetailsView.swift
//  NightWatch
//
//  Created by Mikhail Klishevich on 02.07.2021.
//

import SwiftUI

struct DetailsView: View {
    @Binding var task: Task
    var body: some View {
        VStack {
            Text(task.name)
            Text("Descriotion")
            Button("Mark Complete") {
                task.isComplete = true
            }
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(task: Binding<Task>.constant(Task(name: "Test task", isComplete: false, lastCompleted: nil)))
    }
}
