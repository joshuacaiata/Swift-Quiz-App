//
//  ScoreView.swift
//  Code History
//
//  Created by Joshua Caiata on 2/10/24.
//

import SwiftUI

struct ScoreView: View {
    var body: some View {
        ZStack {
            GameColor.main.ignoresSafeArea()
            VStack{}
                .foregroundColor(.white)
                .navigationBarHidden(true)
        }
    }
}

#Preview {
    ScoreView()
}
