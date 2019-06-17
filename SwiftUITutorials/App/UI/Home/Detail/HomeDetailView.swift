//
//  HomeDetailView.swift
//  SwiftUITutorials
//
//  Created by BeiOSRepublic on 17/06/2019.
//  Copyright © 2019 BeiOSRepublic. All rights reserved.
//

import SwiftUI
import WebKit

struct HomeDetailView: View {
    let user: UserModel
    
    var body: some View {
        VStack(alignment: .leading) {
            WebView(urlString: user.url)
        }.navigationBarItem(title: Text(user.name), titleDisplayMode: .inline)
    }
}

#if DEBUG
struct HomeDetailView_Previews : PreviewProvider {
    static var previews: some View {
        HomeDetailView(user: UserModel(name: "Apple Tutorials", url: "https://developer.apple.com/tutorials", image: ThemeImage.apple.image()))
    }
}
#endif
