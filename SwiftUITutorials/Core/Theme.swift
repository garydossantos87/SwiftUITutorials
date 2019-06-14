//
//  Theme.swift
//  SwiftUITutorials
//
//  Created by BeiOSRepublic on 14/06/2019.
//  Copyright © 2019 BeiOSRepublic. All rights reserved.
//

import UIKit

enum ThemeImage {
    
    case swiftUI
    
    func image() -> UIImage {
        var imageName = ""
        
        switch self {
        case .swiftUI:
            imageName = "ic_swiftui"
        }
        return UIImage(named: imageName) ?? UIImage()
    }
    
}
