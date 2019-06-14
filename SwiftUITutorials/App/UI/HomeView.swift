//
//  HomeView.swift
//  SwiftUITutorials
//
//  Created by BeiOSRepublic on 14/06/2019.
//  Copyright © 2019 BeiOSRepublic. All rights reserved.
//

import SwiftUI

struct HomeView : View {
    var body: some View {
        NavigationView {
            List {
                HStack {
                    Image(ThemeImage.apple.rawValue)
                        .resizable()
                        .clipShape(Circle())
                        .overlay(Circle().stroke(Color.black, lineWidth: 2))
                        .frame(width: 70, height: 70)
                    VStack(alignment: .leading) {
                        Text("Apple Tutorials")
                            .font(.headline)
                        Text("https://developer.apple.com/tutorials/swiftui/tutorials")
                            .font(.subheadline)
                            .color(.gray)
                            .lineLimit(nil)
                    }
                }
            }
            }.navigationBarTitle(Text("TUTORIALS"))
    }
}

#if DEBUG
struct HomeView_Previews : PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
