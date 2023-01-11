//
//  ContentView.swift
//  TrafficLight
//
//  Created by Eugene on 10.01.23.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonText = "Start"
    
    @State private var redLight = Light(color: .red)
    @State private var yellowLight = Light(color: .yellow)
    @State private var greenLight = Light(color: .green)
    
    var body: some View {
        VStack(spacing: 20) {
            
            redLight
            yellowLight
            greenLight
            
            Spacer()
            
            ChangeLightButton(caption: buttonText,
                              action: changeLight)
        }
        .padding()
    }
}

extension ContentView {
    
    private func changeLight() {
        if redLight.isOn {
            redLight.turnOff()
            yellowLight.turnOn()
            greenLight.turnOff()
        } else if yellowLight.isOn {
            redLight.turnOff()
            yellowLight.turnOff()
            greenLight.turnOn()
        } else if greenLight.isOn {
            redLight.turnOn()
            yellowLight.turnOff()
            greenLight.turnOff()
        } else {
            redLight.turnOn()
        }
        
        if buttonText == "Start" {
            buttonText = "Next"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
