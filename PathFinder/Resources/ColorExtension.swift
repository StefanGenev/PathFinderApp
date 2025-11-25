//
//  ColorExtension.swift
//  PathFinder
//
//  Created by Stefan Genev on 23.11.25.
//

import Foundation
import SwiftUI

extension Color {
    
    init(hex: String) {
        
            var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines)
            hexString = hexString.replacingOccurrences(of: "#", with: "")
            
            var rgbValue: UInt64 = 0
            Scanner(string: hexString).scanHexInt64(&rgbValue)

            let red = Double((rgbValue >> 16) & 0xFF) / 255.0
            let green = Double((rgbValue >> 8) & 0xFF) / 255.0
            let blue = Double(rgbValue & 0xFF) / 255.0

            self.init(red: red, green: green, blue: blue)
        }
    
    init(dark: Color, light: Color) {
        
        self = Color(UIColor { traitCollection in
            traitCollection.userInterfaceStyle == .dark
            ? UIColor(dark)
            : UIColor(light)
        })
    }
    
    static func designSystem(_ token: DesignSystem.Color.Token) -> Self {
        token.color
    }
    
}
