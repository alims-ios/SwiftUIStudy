//
//  SwiftUIStudyApp.swift
//  SwiftUIStudy
//
//  Created by 이아림 on 2021/11/26.
//

import SwiftUI

@main
struct SwiftUIStudyApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MovieListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
