//
//  techcheckApp.swift
//  Shared
//
//  Created by Chu, LeeAnn on 11/9/22.
//

import SwiftUI

@main
struct techcheckApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
