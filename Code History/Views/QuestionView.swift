//
//  QuestionView.swift
//  Code History
//
//  Created by Joshua Caiata on 2/9/24.
//

import SwiftUI

struct QuestionView: View {
    
    let question: Question
    
    var body: some View {
        VStack {
            VStack {
                Text(question.questionText)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity)
                    .padding(.all, 20.0)
            }
            .background(Color.white)
            .cornerRadius(7.0)
            .foregroundColor(GameColor.main)
            .frame(maxWidth: .infinity)
            .padding(.horizontal, 30)
            
            Spacer()
            
            VStack {
                ForEach(0..<question.possibleAnswers.count, id: \.self) { 
                    answerIndex in
                    Button(action: {
                        print("Tapped on option with the text: \(question.possibleAnswers[answerIndex])")
                    }) {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                    }
                    
                }
            }
            .padding(.bottom, 100)
        }
    }
}


 #Preview {
     QuestionView(question: Game().currentQuestion)
 }
 
