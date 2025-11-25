//
//  DesignSystem.swift
//  PathFinder
//
//  Created by Stefan Genev on 23.11.25.
//

import Foundation
import SwiftUI


final class DesignSystem {}

extension DesignSystem {
    
    enum Color {
        
        //TODO: Finish color palette
        enum Background {
            
            case primary, secondary
            
            var color: SwiftUI.Color {
                
                switch self {
                    
                case .primary:
                    
                    SwiftUI.Color(
                        dark: SwiftUI.Color(hex: "#EAEDF4"),
                        light: SwiftUI.Color(hex: "#EAEDF4")
                    )
                    
                case .secondary:
                    SwiftUI.Color(
                        dark: SwiftUI.Color(uiColor: #colorLiteral(red: 0.15, green: 0.15, blue: 0.17, alpha: 1)), // #26262B
                        light: SwiftUI.Color(uiColor: #colorLiteral(red: 1.00, green: 1.00, blue: 1.00, alpha: 1)) // #FFFFFF
                    )
                }
            }
        }
        
        enum Text {
            
            case primary, secondary
            
            var color: SwiftUI.Color {
                switch self {
                case .primary:
                    SwiftUI.Color(
                        dark: SwiftUI.Color(uiColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), // #FFFFFF
                        light: SwiftUI.Color(uiColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)) // #000000
                    )
                case .secondary:
                    SwiftUI.Color(
                        dark: SwiftUI.Color(uiColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.6)), // #FFFFFF 60%
                        light: SwiftUI.Color(uiColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.6)) // #000000 60%
                    )
                }
            }
        }
        
        enum Shadow {
            case subtle, strong
            
            var color: SwiftUI.Color {
                switch self {
                case .subtle:
                    SwiftUI.Color(uiColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.1))  // #000000 10%
                case .strong:
                    SwiftUI.Color(uiColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.25)) // #000000 25%
                }
            }
        }
        
        enum Token {
            case background(Background)
            case text(Text)
            case shadow(Shadow)
            
            var color: SwiftUI.Color {
                switch self {
                case .background(let bg): return bg.color
                case .text(let text): return text.color
                case .shadow(let shadow): return shadow.color
                }
            }
        }
    }
}
