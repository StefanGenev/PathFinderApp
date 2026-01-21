//
//  FontExtension.swift
//  PathFinder
//
//  Created by Stefan Genev on 23.11.25.
//

import Foundation
import SwiftUI

extension View {
    
    func typography(_ typography: DesignSystem.Typography) -> some View {
        self.modifier(TypographyModifier(style: typography))
    }
}

extension Font {
    
    enum InterWeight: String {
        
        case regular = "Inter-Regular"
        case medium = "Inter-Regular_Medium"
        case semiBold = "Inter-Regular_SemiBold"
        case bold = "Inter-Regular_Bold"
    }
    
    static func inter(_ weight: InterWeight, size: CGFloat) -> Font {
        .custom(weight.rawValue, size: size)
    }
}
