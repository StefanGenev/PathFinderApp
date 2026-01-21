//
//  FloatingTextField.swift
//  PathFinder
//
//  Created by Stefan Genev on 29.12.25.
//

import SwiftUI

struct FloatingTextField: View {
    
    let title: LocalizedStringKey
    let backgroundColor: Color

    @Binding var text: String

    @FocusState private var isFocused: Bool

    var body: some View {
        
        ZStack(alignment: .leading) {

            // Outline
            RoundedRectangle(cornerRadius: 12)
                .stroke(isFocused ? Color.blue : Color.gray.opacity(0.6), lineWidth: 1)
                .frame(height: 56)

            // Floating label
            Text(title)
                .foregroundColor(isFocused ? .blue : .gray)
                .padding(.horizontal, 6)              // 👈 space inside the cut
                .background(backgroundColor)
                .padding(.horizontal, 4)
                .scaleEffect((isFocused || !text.isEmpty) ? 0.8 : 1)
                .offset(x: 16, y: (isFocused || !text.isEmpty) ? -28 : 0)
                .animation(.easeOut(duration: 0.2), value: isFocused || !text.isEmpty)

            // TextField
            TextField("", text: $text)
                .focused($isFocused)
                .padding(.horizontal, 16)
                .padding(.top, 6)
                .frame(height: 56)
        }
    }
}
