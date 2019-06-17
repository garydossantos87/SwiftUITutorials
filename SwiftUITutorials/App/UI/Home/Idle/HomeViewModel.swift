//
//  HomeViewModel.swift
//  SwiftUITutorials
//
//  Created by BeiOSRepublic on 17/06/2019.
//  Copyright © 2019 BeiOSRepublic. All rights reserved.
//

final class HomeViewModel {
    
    var users: [UserModel]
    
    init() {
        self.users = [UserModel(name: "Apple",
                                description: "https://developer.appl.com/tutorials/swiftui/tutorials",
                                image: ThemeImage.apple.image()),
                      UserModel(name: "Brian Voong",
                                description: "https://github.com/bhlvoong",
                                image: ThemeImage.brianVoong.image()),
                      UserModel(name: "Paul Hudson",
                                description: "https://github.com/twostraws",
                                image: ThemeImage.paulHudson.image()),
                      UserModel(name: "Ryan wenderlich",
                                description: "https://www.raywenderlich.com",
                                image: ThemeImage.rayWenderlich.image())]
    }
    
}
