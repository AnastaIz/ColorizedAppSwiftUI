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
        RoundedRectangle(cornerRadius: 10)
            .frame(height: 150)
            .foregroundColor(Color(red: red/255, green: green/255, blue: blue/255))
    }
}

struct ColoredView_Previews: PreviewProvider {
    static var previews: some View {
        ColoredView(red: 0, green: 0, blue: 0)
    }
}
