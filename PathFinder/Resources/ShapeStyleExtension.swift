//
//  ShapeStyleExtension.swift
//  PathFinder
//
//  Created by Stefan Genev on 23.11.25.
//

import Foundation
import SwiftUI

extension ShapeStyle where Self == SwiftUI.Color {
    
    static func designSystem(color token: DesignSystem.Color.Token) -> Self {
        token.color
    }
}
