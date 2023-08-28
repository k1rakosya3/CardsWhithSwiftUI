//
//  CustomCircleView.swift
//  Cards
//
//  Created by Admin on 27.08.23.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimatingGradient: Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(colors: [
                    .colorIndigoMedium,
                    .colorSimonLight
                ],
                    startPoint: isAnimatingGradient ? .topLeading : .bottomLeading,
                    endPoint: isAnimatingGradient ? .bottomTrailing : .topTrailing))
                .frame(width: 256, height: 256)
                .onAppear {
                    print("1")
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimatingGradient.toggle()
                }
            }
            MotionAnimation()
        } // ZSTACK
        .frame(width: 256, height: 256)
    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
