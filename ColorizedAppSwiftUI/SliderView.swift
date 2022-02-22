//
//  SliderView.swift
//  ColorizedAppSwiftUI
//
//  Created by Anastasia Izmaylova on 22.02.2022.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    @State private var text = ""
    
    let color: Color
    
    var body: some View {
        HStack{
            TextView(value: value)
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: value) { newValue in
                    text = "\(lround(newValue))"
                }
            TextFieldView(text: $text, value: $value)
        }
        .onAppear {
            text = "\(lround(value))"
        }
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(123), color: .red)
    }
}
