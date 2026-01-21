//
//  SignInView.swift
//  PathFinder
//
//  Created by Stefan Genev on 16.11.25.
//

import SwiftUI

struct SignInView: View {
    
    @State private var email = ""

    
    var body: some View {
        
        ZStack {
            
            Color.designSystem(color: .background(.primary)).ignoresSafeArea()
            
            VStack(alignment: .leading) {
                
                FloatingTextField(title: "email",
                                  backgroundColor: Color.designSystem(color: .background(.primary)),

                                  text: $email)
                    .keyboardType(.emailAddress)
                    .textContentType(.emailAddress)
                    .autocapitalization(.none)
                
                Image(uiImage: .signInIcon)
                
                TextTitlePrimary("sign_in")
                    .multilineTextAlignment(.leading)
                TextBodySecondary("sign_in_description")
                    .multilineTextAlignment(.leading)
                
                Spacer()
            }
            .padding(.top, DesignSystem.Spacing.xl)
            .padding(.horizontal, DesignSystem.Spacing.xs)
        }

    }
}

#Preview {
    SignInView()
}
