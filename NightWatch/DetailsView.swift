//
//  DetailsView.swift
//  NightWatch
//
//  Created by Mikhail Klishevich on 02.07.2021.
//

import SwiftUI

struct DetailsView: View {
    let taskName: String
    var body: some View {
        VStack {
            Text(taskName)
            Text("Descriotion")
            Text("Complete button")
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(taskName: "Test Task")
    }
}
