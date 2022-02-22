//
//  TextFieldView.swift
//  ColorizedAppSwiftUI
//
//  Created by Anastasia Izmaylova on 22.02.2022.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var text: String
    @Binding var value: Double
    
    @State private var showAlert = false
    
    var body: some View {
        TextField(" ", text: $text) { _ in
            withAnimation {
                checkValue()
            }
        }
        .frame(width: 60)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.decimalPad)
        .alert("Wrong format", isPresented: $showAlert, actions: {}) {
            Text("Enter value from 0 to 255")
        }
    }
}

extension TextFieldView {
    private func checkValue() {
        if let newValue = Double(text), (0...255).contains(newValue) {
            value = Double(newValue)
            return
        }
        showAlert.toggle()
        value = 0
        text = "0"
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(text: .constant("123"), value: .constant(123))
    }
}
