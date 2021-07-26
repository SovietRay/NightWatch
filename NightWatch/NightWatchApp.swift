//
//  NightWatchApp.swift
//  NightWatch
//
//  Created by Mikhail Klishevich on 26.06.2021.
//

import SwiftUI

@main
struct NightWatchApp: App {
    @StateObject private var nightWatchTesks = NightWatchTasks()
    
    var body: some Scene {
        WindowGroup {
            ContentView(nightWatchTasks: nightWatchTesks)
        }
    }
}
