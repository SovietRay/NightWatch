//
//  Task.swift
//  NightWatch
//
//  Created by Mikhail Klishevich on 03.07.2021.
//

import Foundation

struct Task: Identifiable {
    let id = UUID();
    let name: String
    var isComplete: Bool
    let lastCompleted: Date?
    
}
