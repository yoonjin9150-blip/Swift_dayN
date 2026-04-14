//
//  BirthdaysApp.swift
//  Birthdays
//
//  Created by 이윤진 on 4/14/26.
//

import SwiftUI
import SwiftData

@main
struct BirthdaysApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Friend.self)
            
        }
    }
}
