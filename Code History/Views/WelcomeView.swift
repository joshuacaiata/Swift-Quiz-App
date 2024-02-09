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
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select the correct answers to the following questions.")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    
                    Spacer()
                    
                    NavigationLink(
                        destination: GameView(),
                        label: {
                            HStack {
                                BottomTextView(str: "Alright, let's go!")
                            }
                            .background(GameColor.accent)
                        }
                    )
                }
                .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
