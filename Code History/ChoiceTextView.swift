//
//  ChoiceTextView.swift
//  Code History
//
//  Created by Joshua Caiata on 2/7/24.
//

import SwiftUI

struct ChoiceTextView: View {
    
    let choiceText: String
    
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .fontWeight(.bold)
            .padding(.all, 15.0)
            .foregroundColor(mainColor)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(7.0)
            .padding(.horizontal, 30)
    }
}



#Preview {
    ChoiceTextView(choiceText: "Choice Text!")
}
