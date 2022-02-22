//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Anastasia Izmaylova on 20.02.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var red = 0.0
    @State private var green = 0.0
    @State private var blue = 0.0
    
    @FocusState private var focusedField: Bool
    
    var body: some View {
        NavigationView {
            ZStack{
                VStack{
                    ColoredView(red: red, green: green, blue: blue)
                    
                    VStack{
                        SliderView(value: $red, color: .red)
                        SliderView(value: $green, color: .green)
                        SliderView(value: $blue, color: .blue)
                    }
                    .frame(height: 150)
                    .focused($focusedField)
                    .toolbar {
                        ToolbarItemGroup(placement: .keyboard) {
                            Spacer()
                            Button("Done") {
                                focusedField = false
                            }
                        }
                    }
                    Spacer()
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


