//
//  ContentView.swift
//  Code History
//
//  Created by Joshua Caiata on 2/5/24.
//

import SwiftUI

struct GameView: View {
    @State var mainColor = GameColor.main
    
    let question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2
    )
    
    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            
            VStack() {
                Text("1 / 10")
                    .font(.callout)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 50)
                    .padding(.bottom, 30)
                
                
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
                    
                    ForEach(question.possibleAnswers.indices, id: \.self) { answerIndex in
                        Button(action: {
                            print("Tapped on option with text: \(question.possibleAnswers[answerIndex])")
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                        }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        })
                    }
                }
                .padding(.bottom, 100)
            }
        }
        .foregroundColor(.white)
    }
}

#Preview {
    GameView()
}
