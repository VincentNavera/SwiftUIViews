//
//  customModifier.swift
//  views
//
//  Created by Vincio on 7/6/21.
//

import SwiftUI

struct customModifier: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        content
            Text(text)
            .font(.largeTitle)

    }
}

extension View {
    func modified(with text: String) -> some View {
        self.modifier(customModifier(text: text))
    }
}


