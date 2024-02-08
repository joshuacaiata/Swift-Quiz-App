//
//  ContentView.swift
//  Code History
//
//  Created by Joshua Caiata on 2/5/24.
//

import SwiftUI

struct ContentView: View {
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
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
                .foregroundColor(mainColor)
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 30)
                
                Spacer()
                
                VStack {
                    Button(action: {
                        print("Tapped on choice 1")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[0])
                    })
                    
                    Button(action: {
                        print("Tapped on choice 2")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[1])
                    })
                    
                    Button(action: {
                        print("Tapped on choice 3")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[2])
                    })
                    
                    Button(action: {
                        print("Tapped on choice 4")
                    }, label: {
                        ChoiceTextView(choiceText: question.possibleAnswers[3])
                    })
                    
                    
                }
                .padding(.bottom, 100)
            }
        }
        .foregroundColor(.white)
    }
}

#Preview {
    ContentView()
}
