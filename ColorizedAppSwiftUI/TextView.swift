//
//  TextView.swift
//  ColorizedAppSwiftUI
//
//  Created by Anastasia Izmaylova on 22.02.2022.
//

import SwiftUI

struct TextView: View {
    let value: Double
    
    var body: some View {
        Text("\(lround(value))")
            .frame(width: 50)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(value: 100)
    }
}
