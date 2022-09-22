//
//  gpatrackApp.swift
//  gpatrack
//
//  Created by David Neal on 9/7/22.
//

import SwiftUI

@main
struct gpatrackApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment (\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
