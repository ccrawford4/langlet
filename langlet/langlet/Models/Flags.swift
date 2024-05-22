//
//  Flags.swift
//  langlet
//
//  Created by Calum Crawford on 5/22/24.
//

import Foundation

// Flags struct allowing you to easily access the countries emoji
// usage: Flags.andorra will print out the correct andorra flag emoji
struct Flags {
    // Given a country code, returns the emoji flag unicode string
    private static func flag(for countryCode: String) -> String {
        let base: UInt32 = 127397
        var s = ""
        for v in countryCode.unicodeScalars {
            s.unicodeScalars.append(UnicodeScalar(base + v.value)!)
        }
        return String(s)
    }
    
    // Country codes
    static let andorra: String = flag(for: "AD")
    static let unitedArabEmirates: String = flag(for: "AE")
    static let afghanistan: String = flag(for: "AF")
    static let antiguaAndBarbuda: String = flag(for: "AG")
    static let anguilla: String = flag(for: "AI")
    static let albania: String = flag(for: "AL")
    static let armenia: String = flag(for: "AM")
    static let australia: String = flag(for: "AU")
    static let belgium: String = flag(for: "BE")
    
}

