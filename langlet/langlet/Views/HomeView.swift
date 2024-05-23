//
//  HomeView.swift
//  langlet
//
//  Created by Calum Crawford on 5/22/24.
//

import Foundation
import SwiftUI

struct HomeView: View {
    @Binding var languages: [Language]
    
    var body: some View {
        NavigationStack {
            VStack {
                List(languages) { language in
                    NavigationLink(destination: {}) {
                        Text("\(language.icon) \(language.name)")
                    }
                }
            }
            .padding(.top)
            .navigationTitle("Languages Learning")
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
            }
            .accessibilityLabel("New Language")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(languages: .constant(Language.sampleData))
    }
}

