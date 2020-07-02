//
//  Post.swift
//  UInstagram
//
//  Created by Sébastien Goetz on 02/07/2020.
//  Copyright © 2020 Sébastien Goetz. All rights reserved.
//

import Foundation

struct Post: Identifiable {
    var id = UUID()
    var photo: String
    var author: Profile
    var numberOfLikes: Int = Int.random(in: 1 ..< 1000)
    var location: String?
    var description: String
    var liked = Bool.random()
    var bookmarked = Bool.random()
}
