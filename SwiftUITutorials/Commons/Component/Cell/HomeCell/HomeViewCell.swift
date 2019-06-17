//
//  HomeViewCell.swift
//  SwiftUITutorials
//
//  Created by BeiOSRepublic on 17/06/2019.
//  Copyright © 2019 BeiOSRepublic. All rights reserved.
//

import SwiftUI

struct HomeViewCell: View {
    private let imageSize: CGFloat = 70.0
    let user: UserModel
    
    var body: some View {
        HStack {
            Image(uiImage: user.image)
                .resizable()
                .clipShape(Circle())
                .overlay(Circle()
                    .stroke(Color.black, lineWidth: 2))
                
                .frame(width: imageSize, height: imageSize)
            VStack(alignment: .leading) {
                Text(user.name)
                    .font(.headline)
                Text(user.description)
                    .font(.subheadline)
                    .color(.gray)
                    .lineLimit(nil)
            }
        }
    }
}

#if DEBUG
struct HomeViewCell_Previews : PreviewProvider {
    static var previews: some View {
        HomeViewCell(user: UserModel(name: "Apple Tutorials", description: "Some description", image: ThemeImage.apple.image()))
    }
}
#endif
