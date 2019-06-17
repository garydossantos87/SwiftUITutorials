//
//  HomeView.swift
//  SwiftUITutorials
//
//  Created by BeiOSRepublic on 14/06/2019.
//  Copyright © 2019 BeiOSRepublic. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    let viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.users.identified(by: \.self)) { user in
                NavigationButton(destination: HomeDetailView(user: user), label: {
                    HomeViewCell(user: user)
                })
                }.navigationBarTitle(Text("Tutorials"))
        }
    }
}

#if DEBUG
struct HomeView_Previews : PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
#endif
