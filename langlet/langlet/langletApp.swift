//
//  langletApp.swift
//  langlet
//
//  Created by Calum Crawford on 5/21/24.
//

import SwiftUI
import SwiftData

@main
struct langletApp: App {
    // Put global state objects here
    @State private var languages = Language.sampleData
    
    var body: some Scene {
        WindowGroup {
            HomeView(languages: languages)
        }
    }
}
