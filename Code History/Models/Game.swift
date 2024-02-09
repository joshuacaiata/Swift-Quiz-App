//
//  Game.swift
//  Code History
//
//  Created by Joshua Caiata on 2/8/24.
//

import Foundation

struct Game {
    private let questions = Question.allQuestions.shuffled()
    private(set) var guesses = [Question: Int]()
    private(set) var currentQuestionIndex = 0
    private(set) var isOver = false
    
    var numberOfQuestions: Int {
        return self.questions.count
    }
    
    var currentQuestion: Question {
        return self.questions[self.currentQuestionIndex]
    }
    
    mutating func makeGuessForCurrentQuestion(atIndex index: Int) -> Void {
        guesses[self.currentQuestion] = index
    }
    
    mutating func updateGameStatus() -> Void {
        if currentQuestionIndex < questions.count - 1 {
            currentQuestionIndex += 1
        } else {
            isOver = true
        }
    }
    
    var guessCount: (correct: Int, incorrect: Int) {
        var count: (correct: Int, incorrect: Int) = (0, 0)
        for (question, guessedIndex) in guesses {
            if question.correctAnswerIndex == guessedIndex {
                count.correct += 1
            } else {
                count.incorrect += 1
            }
        }
        
        return count
    }
    
    
}
