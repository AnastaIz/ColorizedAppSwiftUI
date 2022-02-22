//
//  ColoredView.swift
//  ColorizedAppSwiftUI
//
//  Created by Anastasia Izmaylova on 20.02.2022.
//

import SwiftUI

struct ColoredView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255, green: green / 255, blue: blue / 255)
            .cornerRadius(10)
            .frame(height: 150)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black, lineWidth: 3))
    }
}

struct ColoredView_Previews: PreviewProvider {
    static var previews: some View {
        ColoredView(red: 255, green: 255, blue: 255)
    }
}
