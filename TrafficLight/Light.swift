//
//  Light.swift
//  TrafficLight
//
//  Created by Eugene on 10.01.23.
//

import SwiftUI

fileprivate let lightIsOn = 1.0
fileprivate let lightIsOff = 0.3

struct Light: View {
    private var opacity = lightIsOff
    private let color: Color
    
    var isOn: Bool {
        self.opacity == lightIsOn
    }
    
    var body: some View {
        Circle()
            .frame(width: 130)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay( Circle().stroke(Color.white, lineWidth: 4) )
            .shadow(radius: 10)
    }
    
    init(color: Color) {
        self.color = color
    }
}

extension Light {
    
    mutating func turnOn() {
        self.opacity = lightIsOn
    }
    
    mutating func turnOff() {
        self.opacity = lightIsOff
    }
}

struct Light_Previews: PreviewProvider {
    static var previews: some View {
        Light(color: .red)
    }
}
