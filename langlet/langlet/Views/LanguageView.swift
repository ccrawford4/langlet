//
//  LanguageView.swift
//  langlet
//
//  Created by Calum Crawford on 5/22/24.
//

import Foundation
import SwiftUI

struct LanguageView: View {
    var language: Language
    
    var body: some View {
            NavigationStack {
                VStack {
                    NavigationLink(destination: {
                        // Your destination view goes here
                    }) {
                        Label("Start a new recording", systemImage: "timer")
                            .font(.headline)
                            .foregroundColor(.blue)
                    }
                }
                .navigationTitle(language.placement)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text(language.formattedTitle)
                            .font(.headline) // Adjust font style as needed
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button("Edit") {
                            // Edit action goes here
                        }
                    }
                }
            }
        }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView(language: Language.sampleData[0])
    }
}
