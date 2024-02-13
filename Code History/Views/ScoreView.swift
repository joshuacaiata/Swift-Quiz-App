//
//  ScoreView.swift
//  Code History
//
//  Created by Joshua Caiata on 2/10/24.
//

import SwiftUI

struct ScoreView: View {
    let viewModel: ScoreViewModel
    
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack{
                    Spacer()
                    VStack {
                        Text("Final Score")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity)
                            .padding(.top, 40.0)
                            .padding(.bottom, 20.0)
                        
                        Text("\(viewModel.percent)%")
                            .font(.largeTitle)
                            .padding(.bottom, 40.0)
                            .bold()
                    }
                    .background(Color.white)
                    .cornerRadius(7.0)
                    .foregroundColor(GameColor.main)
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal, 30)
                    
                    
                    Spacer()
                    Text("\(viewModel.correctGuesses) Correct")
                        .font(.title3)
                    Text("\(viewModel.incorrectGuesses) Incorrect")
                        .font(.title3)
                    Spacer()
                    NavigationLink(destination: WelcomeView(),
                                   label: {
                                    HStack{
                                        ContinueButton(str: "Re-take Quiz")
                                    }
                                    
                    })
                }
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
}
