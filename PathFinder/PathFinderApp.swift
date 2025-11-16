//
//  PathFinderApp.swift
//  PathFinder
//
//  Created by Stefan Genev on 16.11.25.
//

import SwiftUI

@main
struct PathFinderApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
