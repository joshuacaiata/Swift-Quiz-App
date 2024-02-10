//
//  ChoiceTextView.swift
//  Code History
//
//  Created by Joshua Caiata on 2/7/24.
//

import SwiftUI

struct ChoiceTextView: View {
    
    let choiceText: String
        
    var body: some View {
        Text(choiceText)
            .font(.body)
            .fontWeight(.bold)
            .padding(.all, 15.0)
            .foregroundColor(GameColor.main)
            .frame(maxWidth: .infinity)
            
    }
}



#Preview {
    ChoiceTextView(choiceText: "Choice Text!")
}
