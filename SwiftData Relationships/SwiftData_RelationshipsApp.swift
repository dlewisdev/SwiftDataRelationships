//
//  SwiftData_RelationshipsApp.swift
//  SwiftData Relationships
//
//  Created by Danielle Lewis on 12/19/23.
//

import SwiftUI
import SwiftData

@main
struct SwiftData_RelationshipsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: [Person.self, Family.self])
        }
    }
}
