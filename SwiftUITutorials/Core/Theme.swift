//
//  Theme.swift
//  SwiftUITutorials
//
//  Created by BeiOSRepublic on 14/06/2019.
//  Copyright © 2019 BeiOSRepublic. All rights reserved.
//

import UIKit

enum ThemeImage: String {
    
    case swiftUI = "ic_swiftui", apple = "ic_apple", brianVoong = "ic_brian_voong", rayWenderlich =  "ic_ray_wenderlich", paulHudson = "ic_paul_hudson"
    
    func image() -> UIImage {
        return UIImage(named: self.rawValue) ?? UIImage()
    }
    
}
