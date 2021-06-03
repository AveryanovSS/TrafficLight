//
//  ContentView.swift
//  TrafficLight
//
//  Created by  Sergey on 02.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State private var selectColor = 1
    @State private var buttonText = "Start"
    
    @State private var stateRed = 0
    @State private var stateOrange = 0
    @State private var stateGreen = 0
    
    var body: some View {
        Color.black
            .ignoresSafeArea()
            .overlay(
                VStack {
                    ColorCircle(color: .red, state: stateRed)
                    ColorCircle(color: .orange, state: stateOrange)
                    ColorCircle(color: .green, state: stateGreen)
                    Spacer()
                    Button(action: {
                        setState()
                    }) {
                        Text(buttonText)
                            .padding()
                            .frame(width: 150, height: 50)
                            .shadow(radius: 10)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .font(.title)
                            .cornerRadius(25)
                            .overlay(RoundedRectangle(cornerRadius: 25)
                                        .stroke(Color.white, lineWidth: 4))
                    }
                }
                .padding(20)
            )
    }
    
    func setState() {
        buttonText = "Next"
        
        stateRed = 0
        stateOrange = 0
        stateGreen = 0
        
        switch selectColor {
        case 1:
            stateRed = 1
            selectColor += 1
        case 2:
            stateOrange = 1
            selectColor += 1
        default:
            stateGreen = 1
            selectColor = 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
