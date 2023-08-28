//
//  SettingsView.swift
//  Cards
//
//  Created by Admin on 28.08.23.
//

import SwiftUI

struct SettingsView: View {
    private let alternativeAppIcons: [String] = [
        "AppIcon-MagnifyingGlass",
        "AppIcon-Map",
        "AppIcon-Mushroom",
        "AppIcon-Camera",
        "AppIcon-Backpack",
        "AppIcon-Campfire"
      ]
      
    var body: some View {
        List {
            //MARK: HEADER
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .bold))
                    VStack {
                        Text("Hike")
                            .font(.system(size: 56, weight: .bold))
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .bold))
                    Spacer()
                } //: HSTACK FIRST SECTION
                .foregroundStyle(LinearGradient(colors: [.colorGreenLight,
                                                         .colorGreenMedium,
                                                         .colorGreenDark],
                                                startPoint: .top,
                                                endPoint: .bottom))
                .padding(.top, 8)
                VStack(spacing: 8) {
                    Text("Where can you find \nperfeact tracks?")
                        .font(.title)
                        .fontWeight(.heavy)
                    Text("The hike which looks georgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.colorGreenMedium)
                } //: VSTACK
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            } //: HEADER
            .listRowSeparator(.hidden)
            //MARK: ICONS
            Section(header: Text("Alternate Icons")) {
                ScrollView(.horizontal,showsIndicators: false) {
                    HStack(spacing: 12) {
                        ForEach(alternativeAppIcons.indices, id: \.self) { item in
                            
                            Button {
                                UIApplication.shared.setAlternateIconName(alternativeAppIcons[item]) { error in
                                    if error != nil {
                                      print("Failed request to update the app's icon: \(String(describing: error?.localizedDescription))")
                                    } else {
                                      print("Success! You have changed the app's icon to \(alternativeAppIcons[item])")
                                    }
                                }
                            } label: {
                                Image("\(alternativeAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(16)
                            }
                        .buttonStyle(.borderless)
                        }
                    }
                } //: SCROLL VIEW
                .padding(.top, 12)
                Text("Choose your favourite app icon from the collection above")
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
                    .padding(.bottom, 12)
            }
            //MARK: ABOUT
            Section(
                header: Text("ABOUT THE APP"),
                footer: HStack {
                    Spacer()
                    Text("Copyright © All right")
                    Spacer()
                }
                    .padding(.vertical,8)
            ) {
                // 1. Basic Labeled Content
                // LabeledContent("Application", value: "Hike")
                // 2. Advanced label Content
                CustomListRow(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintColor: .blue)
                
                CustomListRow(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                
                CustomListRow(rowLabel: "Technology", rowIcon: "swift", rowContent: "Swift", rowTintColor: .orange)
                
                CustomListRow(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                
                CustomListRow(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "John Doe", rowTintColor: .mint)
                
                CustomListRow(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)
                
            } //: SECTION
        } //: LIST
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
