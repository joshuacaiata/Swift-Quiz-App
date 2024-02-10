//
//  BottomTextView.swift
//  Code History
//
//  Created by Joshua Caiata on 2/8/24.
//

import SwiftUI

struct LetsGoButton: View {
    let str: String
    
    var body: some View {
        HStack {
            Spacer()
            Text(str)
                .font(.title2)
                .bold()
                .padding()
                .padding(.top, 20)
            Spacer()
        }
        .background(Color.white)
        .foregroundColor(.black)
    }
}

#Preview {
    LetsGoButton(str: "Test")
}
