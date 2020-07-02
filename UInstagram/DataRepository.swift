//
//  DataRepository.swift
//  UInstagram
//
//  Created by Sébastien Goetz on 30/06/2020.
//  Copyright © 2020 Sébastien Goetz. All rights reserved.
//

import Foundation

struct DataRepository {
    static var posts: Array<Post> = [
        Post(photo: "photo01", author: randomProfile(), location: "Calle de La Almudena, Spain", description: "One nice photo 🐱 #kitten #cute"),
        Post(photo: "photo02", author: randomProfile(), description: "Such paradisiac point of view #holidays"),
        Post(photo: "photo03", author: randomProfile(), location: "Oakland, United States", description: "Tried a new vegan recipe. Terrific! #vegan #foodporn #yummy"),
        Post(photo: "photo04", author: randomProfile(), description: "Some good boardgames with friends last night! #dragon #dungeons"),
        Post(photo: "photo05", author: randomProfile(), description: "Preparing my exam at library. Surounded by books and wisdom gives me courage!"),
        ].shuffled()
    
    static var profiles: Array<Profile> = [
        Profile(name: "yellowfrog", photo: "profile01"),
        Profile(name: "pinkwolf", photo: "profile02"),
        Profile(name: "whiteladybug", photo: "profile03"),
        Profile(name: "redpeacock", photo: "profile04"),
        Profile(name: "bluezebra", photo: "profile05"),
        Profile(name: "greendog", photo: "profile06"),
        Profile(name: "orangerabbit", photo: "profile07"),
        Profile(name: "purplegorilla", photo: "profile08"),
        Profile(name: "blackelephant", photo: "profile09"),
        ].shuffled()
    
    static private func randomProfile() -> Profile {
        profiles[Int.random(in: 0 ..< profiles.count)]
    }
}
