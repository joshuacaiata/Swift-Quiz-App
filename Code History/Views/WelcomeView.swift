//
//  WelcomeView.swift
//  Code History
//
//  Created by Joshua Caiata on 2/8/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                GameColor.main.ignoresSafeArea()
                VStack {
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select the correct answers to the following questions.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding(.all, 20.0)
                            .padding(.top, 80.0)
                    }
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            HStack {
                                ContinueButton(str: "Alright, let's go!")
                            }
                        }
                    )
                }
                .foregroundColor(.white)
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
        
    }
}

#Preview {
    WelcomeView()
}
