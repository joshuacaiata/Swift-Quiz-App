//
//  QuestionView.swift
//  Code History
//
//  Created by Joshua Caiata on 2/9/24.
//

import SwiftUI

struct QuestionView: View {
    
    @EnvironmentObject var viewModel: GameViewModel
    
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
                        viewModel.makeGuess(atIndex: answerIndex)
                    })
                    {
                        ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                            .background(viewModel.color(forOptionIndex: answerIndex))
                            .cornerRadius(7.0)
                            .padding(.horizontal, 30)
                    }
                    
                }
            }
            
            Spacer()
            
            if viewModel.guessWasMade {
                Button(action: {
                    viewModel.displayNextScreen()
                })
                {
                    LetsGoButton(str: "Next Question")
                }
            } else {
                    HStack {
                        Spacer()
                            .padding()
                            .padding(.top, 20)
                    }
            }
            
        }
    }
}


 #Preview {
     QuestionView(question: Game().currentQuestion)
 }
 
