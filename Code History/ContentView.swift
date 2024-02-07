//
//  ContentView.swift
//  Code History
//
//  Created by Joshua Caiata on 2/5/24.
//

import SwiftUI

struct ContentView: View {
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
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
                    Text("What was the first computer bug?")
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
                        Text("Ant")
                            .font(.body)
                            .fontWeight(.bold)
                            .padding(.all, 15.0)
                            .foregroundColor(mainColor)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(7.0)
                            .padding(.horizontal, 30)
                    })
                    
                    
                    Button(action: {
                        print("Tapped on choice 2")
                    }, label: {
                        Text("Beetle")
                            .font(.body)
                            .fontWeight(.bold)
                            .padding(.all, 15.0)
                            .foregroundColor(mainColor)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(7.0)
                            .padding(.horizontal, 30)
                    })
                    
                    
                    Button(action: {
                        print("Tapped on choice 3")
                    }, label: {
                        Text("Moth")
                            .font(.body)
                            .fontWeight(.bold)
                            .padding(.all, 15.0)
                            .foregroundColor(mainColor)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(7.0)
                            .padding(.horizontal, 30)
                    })
                    
                    
                    Button(action: {
                        print("Tapped on choice 4")
                    }, label: {
                        Text("Fly")
                            .font(.body)
                            .fontWeight(.bold)
                            .padding(.all, 15.0)
                            .foregroundColor(mainColor)
                            .frame(maxWidth: .infinity)
                            .background(Color.white)
                            .cornerRadius(7.0)
                            .padding(.horizontal, 30)
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
