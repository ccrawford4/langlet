//
//  Language.swift
//  langlet
//
//  Created by Calum Crawford on 5/22/24.
//

import Foundation
import SwiftUI

struct Language: Identifiable, Codable {
    let id: UUID
    var name: String
    var icon: String
    var formattedTitle: String
    
    // TODO:
    // Possibly consider implementing a Theme here like so:
    // var theme: Theme
    
    init(id: UUID = UUID(), name: String, icon: String) {
        self.id = id
        self.name = name
        self.icon = icon
        self.formattedTitle = icon + " " + name
    }
}

extension Language {
    static let sampleData: [Language] = [
        Language(name: "Arabic", icon: Flags.afghanistan),
        Language(name: "English", icon: Flags.australia),
        Language(name: "Dutch", icon: Flags.belgium),
    ]
}
