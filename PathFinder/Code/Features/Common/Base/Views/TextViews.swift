//
//  TextViews.swift
//  PathFinder
//
//  Created by Stefan Genev on 22.12.25.
//

import SwiftUI

struct TextTitlePrimary: View {

    private let key: LocalizedStringKey

    init(_ key: LocalizedStringKey) {
        self.key = key
    }

    var body: some View {
        
        Text(key)
            .typography(.title)
            .foregroundColor(
                DesignSystem.Color.Text.primary.color
            )
    }
}

struct TextBodyPrimary: View {

    private let key: LocalizedStringKey

    init(_ key: LocalizedStringKey) {
        self.key = key
    }

    var body: some View {
        
        Text(key)
            .typography(.body)
            .foregroundColor(
                DesignSystem.Color.Text.primary.color
            )
    }
}

struct TextBodySecondary: View {

    private let key: LocalizedStringKey

    init(_ key: LocalizedStringKey) {
        self.key = key
    }

    var body: some View {
        
        Text(key)
            .typography(.body)
            .foregroundColor(
                DesignSystem.Color.Text.secondary.color
            )
    }
}
