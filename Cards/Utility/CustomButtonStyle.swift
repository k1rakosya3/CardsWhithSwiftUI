//
//  CustomButtonStyle.swift
//  Cards
//
//  Created by Admin on 27.08.23.
//

import Foundation
import SwiftUI
struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ?
                LinearGradient(colors: [
                .colorGrayMedium,
                .colorGrayLight],
               startPoint: .top,
               endPoint: .bottom)
                :
                LinearGradient(colors: [
                .colorGrayLight,
                .colorGrayMedium],
               startPoint: .top,
               endPoint: .bottom))
            .cornerRadius(40)
    }
    
}
