//
//  ScoreViewModel.swift
//  Code History
//
//  Created by Joshua Caiata on 2/12/24.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percent: String {
        let totalGuesses = correctGuesses + incorrectGuesses
        if totalGuesses == 0 { return "0.0" } // Prevent division by zero
        let percentage = 100.0 * (Float(correctGuesses) / Float(totalGuesses))
        return String(format: "%.1f", percentage)
    }
}


