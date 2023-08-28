//
//  CardView.swift
//  Cards
//
//  Created by Admin on 26.08.23.
//

import SwiftUI

struct CardView: View {
    @State private var imageNumber = 1
    @State private var randomNumber = 1
    @State private var isShowingSheet: Bool = false
    
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        
        imageNumber = randomNumber
    }
    
    var body: some View {
        ZStack {
            CustomBackground()
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                                .fontWeight(.black)
                                .font(.system(size: 52))
                                .foregroundStyle(LinearGradient(colors: [
                                    .colorGrayLight,
                                    .colorGrayMedium],
                                    startPoint: .top,
                                    endPoint: .bottom))
                            .multilineTextAlignment(.leading)
                        Spacer()
                        Button {
                            isShowingSheet.toggle()
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet) {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        }

                    }
                    Text("Fun and enjoyable outdoor activity for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.colorGrayMedium)
                } // VSTACK
                .padding(30)
                    ZStack {
                        CustomCircleView()
                            
                        Image("image-\(imageNumber)")
                            .resizable()
                            .scaledToFit()
                    } // ZSTACK
                Button {
                    randomImage()
                } label: {
                    Text("Explore more")
                        .fontWeight(.bold)
                        .foregroundStyle(LinearGradient(colors: [.colorGreenLight,
                            .colorGreenMedium],
                            startPoint: .top,
                            endPoint: .bottom))
                        .shadow(color: .black.opacity(0.5), radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(CustomButtonStyle())
                } // ZSTACK
            } // ZSTACK
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
