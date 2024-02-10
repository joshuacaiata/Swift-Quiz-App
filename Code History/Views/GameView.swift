//
//  ContentView.swift
//  Code History
//
//  Created by Joshua Caiata on 2/5/24.
//

import SwiftUI

struct GameView: View {
    @StateObject var viewModel = GameViewModel()
    
    
    
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
        .navigationBarHidden(true)
        .environmentObject(viewModel)
        .fullScreenCover(isPresented: Binding<Bool>(
                    get: { viewModel.gameIsOver },
                    set: { _ in }
                )) {
                    // The Game Over screen content goes here
                    Text("Game Over!")
                }
    }
}

#Preview {
    GameView()
}
