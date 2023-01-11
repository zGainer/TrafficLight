//
//  changeLightButton.swift
//  TrafficLight
//
//  Created by Eugene on 10.01.23.
//

import SwiftUI

struct ChangeLightButton: View {
    let caption: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                Color(.systemMint)
                
                Text(caption)
                    .foregroundColor(.white)
                    .font(.title)
            }
        }
        .frame(width: 150, height: 50)
        .cornerRadius(15)
        .overlay( RoundedRectangle(cornerRadius: 15).stroke(Color.white, lineWidth: 4) )
        .shadow(radius: 10)
    }
}

struct changeLightButton_Previews: PreviewProvider {
    static var previews: some View {
        ChangeLightButton(caption: "Start", action: { } )
    }
}
