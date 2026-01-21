//
//  DesignSystemFonts.swift
//  PathFinder
//
//  Created by Stefan Genev on 22.12.25.
//

import SwiftUI

extension DesignSystem {

    enum Typography {
        
        case title
        case body
        case button
        case caption

        var font: Font {
            
            switch self {
            case .title:
                return .inter(.bold, size: 32)
            case .body:
                return .inter(.regular, size: 14)
            case .button:
                return .inter(.semiBold, size: 18)
            case .caption:
                return .inter(.medium, size: 12)
            }
        }

        var lineSpacing: CGFloat {
            switch self {
            case .title: return 6
            case .body: return 4
            default: return 0
            }
        }

        var kerning: CGFloat {
            switch self {
            case .button: return 1.2
            case .caption: return 0.5
            default: return 0
            }
        }
    }
}

struct TypographyModifier: ViewModifier {
    
    let style: DesignSystem.Typography
    
    func body(content: Content) -> some View {
        
        content
            .font(style.font)
            .lineSpacing(style.lineSpacing)
            .kerning(style.kerning)
    }
}
