//
//  ColorCircle.swift
//  TrafficLight
//
//  Created by  Sergey on 02.06.2021.
//

import SwiftUI

struct ColorCircle: View {
    let color: Color
    var state: Int
    
    var body: some View {
        Circle()
            .foregroundColor(state == 1 ? color : color.opacity(0.2))
            .frame(width: 150, height: 150)
            .shadow(radius: 10)
            .overlay(Circle()
                        .stroke(Color.white, lineWidth: 4))
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .blue, state: 1)
    }
}
