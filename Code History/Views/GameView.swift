//
//  ContentView.swift
//  Code History
//
//  Created by Joshua Caiata on 2/5/24.
//

import SwiftUI

struct GameView: View {
    @StateObject var viewModel = GameViewModel()
    
    let question = Question(
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"],
        correctAnswerIndex: 2
    )
    
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            
            VStack() {
                Text(viewModel.questionProgressText)
                    .font(.callout)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 50)
                    .padding(.bottom, 30)
                
                QuestionView(question:viewModel.currentQuestion)
            }
        }
        .foregroundColor(.white)
    }
}

#Preview {
    GameView()
}
