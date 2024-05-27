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
                Section(header: Text("Previous Transcriptions")) {
                   // Empty for now because we have no past recordings
                }
            }
            .navigationTitle(language.formattedTitle)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Edit") {
                        // edit action here
                    }
                }
            }
        }
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView(language: .constant(Language.sampleData[0]))
    }
}
