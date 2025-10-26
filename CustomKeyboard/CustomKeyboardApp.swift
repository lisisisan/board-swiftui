//
//  CustomKeyboardApp.swift
//  CustomKeyboard
//
//  Created by Ilona on 10/26/25.
//

import SwiftUI
import CoreData

@main
struct CustomKeyboardApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
