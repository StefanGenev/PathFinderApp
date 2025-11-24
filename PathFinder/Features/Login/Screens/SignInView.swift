//
//  SignInView.swift
//  PathFinder
//
//  Created by Stefan Genev on 16.11.25.
//

import SwiftUI

struct SignInView: View {
    
    var body: some View {
        
        ZStack{
            
            Color.designSystem(color: .background(.primary)).ignoresSafeArea()
            
            Text("Sign In")
        }

    }
}

#Preview {
    SignInView()
}
