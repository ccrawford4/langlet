//
//  LanguageView.swift
//  langlet
//
//  Created by Calum Crawford on 5/22/24.
//

import Foundation
import SwiftUI

// Detailed Language View
struct LanguageView: View {
    @Binding var language: Language
    @State private var isShowingEditView: Bool = false
    
    var body: some View {
        NavigationStack {
            List {
                Section (header: Text("Options")) {
                    NavigationLink(destination: {}) {
                        // Go to start a recording
                        Label("Start a new recording", systemImage: "timer")
                            .font(.headline)
                            .foregroundColor(.accentColor)
                    }
                }
                Section(header: Text("History")) {
                    if language.history.isEmpty {
                        Label("No past translations", systemImage: "calendar.badge.exclamationmark")
                    }
                    ForEach(language.history) { history in
                        NavigationLink(destination: {}) {
                            HStack {
                                Image(systemName: "calendar")
                                Text(history.date, style: .date)
                            }
                        }
                    }
                }
            }
            .navigationTitle(language.formattedTitle)
        }
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView(language: .constant(Language.sampleData[0]))
    }
}
