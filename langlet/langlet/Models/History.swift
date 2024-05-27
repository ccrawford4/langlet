//
//  History.swift
//  langlet
//
//  Created by Calum Crawford on 5/26/24.
//

import SwiftUI

// Identifiable for listing
// Codable for JSON seriliaziation
// Equatable for Testing
struct History: Identifiable, Codable, Equatable {
    let id: UUID
    let date: Date
    var transcript: String?
    
    init(id: UUID = UUID(), date: Date = Date(), transcript: String? = nil) {
        self.id = id
        self.date = date
        self.transcript = transcript
    }
}
