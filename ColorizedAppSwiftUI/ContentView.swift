//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Anastasia Izmaylova on 20.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = 0.0
    @State private var greenSliderValue = 0.0
    @State private var blueSliderValue = 0.0
    
    @State private var redSliderTF = " "
    @State private var greenSliderTF = " "
    @State private var blueSliderTF = " "
    
    
    var body: some View {
        VStack(spacing: 20){
            ColoredView(
                red: redSliderValue,
                green: greenSliderValue,
                blue: blueSliderValue)
            HStack{
                Text("\(lround(redSliderValue))")
                    .frame(width: 50)
                ColorSliderView(value: $redSliderValue, color: .red)
                    .onChange(of: redSliderValue) { newValue in
                    redSliderTF = "\(lround(newValue))"
                    }
                TextFieldView(text: $redSliderTF, value: $redSliderValue)
            }
            HStack{
                Text("\(lround(greenSliderValue))")
                    .frame(width: 50)
                ColorSliderView(value: $greenSliderValue, color: .green)
                    .onChange(of: greenSliderValue) { newValue in
                    greenSliderTF = "\(lround(newValue))"
                    }
                TextFieldView(text: $greenSliderTF, value: $greenSliderValue)
            }
            HStack{
                Text("\(lround(blueSliderValue))")
                    .frame(width: 50)
                ColorSliderView(value: $blueSliderValue, color: .blue)
                    .onChange(of: blueSliderValue) { newValue in
                    blueSliderTF = "\(lround(newValue))"
                    }
                TextFieldView(text: $blueSliderTF, value: $blueSliderValue)
            }
            
        }
        .padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ColorSliderView: View {
    @Binding var value: Double
    
    let color: Color

    var body: some View {
        Slider(value: $value, in: 0...255, step: 1)
            .tint(color)
    }
}


struct TextFieldView: View {
    @Binding var text: String
    @Binding var value: Double
    
    var body: some View {
        TextField(" ", text: $text, onEditingChanged: { newValue in
            value = Double(text) ?? 0.0
        })
            .textFieldStyle(.roundedBorder)
            .frame(width: 60)
    }
}
