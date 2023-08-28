//
//  CustomBackground.swift
//  Cards
//
//  Created by Admin on 26.08.23.
//

import SwiftUI

struct CustomBackground: View {
    var body: some View {
        
        ZStack {
            Color.colorGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            Color.colorGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(3)
            
            LinearGradient(colors: [
                .colorGreenLight,
                .colorGreenMedium],
                startPoint: .top,
                endPoint: .bottom)
                .cornerRadius(40)
                
        }
    }
}

struct CustomBackground_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackground()
            .padding()
    }
}
